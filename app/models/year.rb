class Year < ActiveRecord::Base
	has_many :course_registrations, :dependent => :destroy
	belongs_to :studyplan
	
	validates_presence_of :studyplan_id, :title
	
	def before_validation_on_create
	  if (!self.title || self.title.empty?) && studyplan
	    if !studyplan.years.empty? && studyplan.years.reverse.find { |year| year.title =~ /(\d+)/ }
  	    self.title = $1.to_i + 1
	    else
	      self.title = DateTime.now.year.to_s
  	  end
	  end
	end
	
	def timetable(seasonless = false)
    timetable = Hash.new []
    
    course_registrations.each do |course_registration|
      course_registration.course_version.timetable_modules.each do |ttmodule|
        next unless block_given? and yield ttmodule
        key = seasonless ? ttmodule.seasonless_name : ttmodule.name
        timetable[key] = Array.new unless timetable.has_key?(key)
        timetable[key] << course_registration
      end
    end
    
    timetable
	end
	
	def spring_timetable
	  timetable(true) { |location| location.in_spring? }
	end
	
	def fall_timetable
	  timetable(true) { |location| location.in_fall? }
	end
	
	def points(season = nil)
	  case season
	    when :spring
 	      course_registrations.sum(:points, :joins => "LEFT JOIN course_versions ON course_versions.id = course_registrations.course_version_id LEFT JOIN courses ON courses.id = course_versions.course_id", :conditions => "EXISTS (SELECT * FROM locations LEFT JOIN timetable_modules ON locations.timetable_module_id = timetable_modules.id WHERE fall = 0 AND locations.course_version_id = course_versions.id)")	    
	    when :fall
 	      course_registrations.sum(:points, :joins => "LEFT JOIN course_versions ON course_versions.id = course_registrations.course_version_id LEFT JOIN courses ON courses.id = course_versions.course_id", :conditions => "EXISTS (SELECT * FROM locations LEFT JOIN timetable_modules ON locations.timetable_module_id = timetable_modules.id WHERE fall = 1 AND locations.course_version_id = course_versions.id)")
	    else
	      course_registrations.sum(:points, :joins => "LEFT JOIN course_versions ON course_versions.id = course_registrations.course_version_id LEFT JOIN courses ON courses.id = course_versions.course_id")
	  end || "0"
	end
end