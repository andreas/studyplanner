class CourseVersion < ActiveRecord::Base
	has_many :course_registrations, :dependent => :destroy
	has_many :locations, :dependent => :destroy
	has_many :timetable_modules, :through => :locations
	belongs_to :course
	
	validates_presence_of :course_id
	
	def in_spring?
	  locations.any? { |location| location.in_spring? }
	end
	
	def in_fall?
	  locations.any? { |location| location.in_fall? }
	end
	
	def spring_locations
	  locations.select { |location| location.in_spring? }
	end
	
	def fall_locations
	  locations.select { |location| location.in_fall? }
	end
end