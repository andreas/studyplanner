class Location < ActiveRecord::Base
	belongs_to :course_version
	belongs_to :timetable_module
	
	validates_presence_of :course_version_id, :timetable_module_id
	
  def in_spring?
	  timetable_module.in_spring?
	end
	
	def in_fall?
	  timetable_module.in_fall?
  end
  
  def seasonless_name
    timetable_module.seasonless_name
  end
end