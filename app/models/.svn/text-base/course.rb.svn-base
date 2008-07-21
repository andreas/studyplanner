class Course < ActiveRecord::Base
	has_many :course_versions, :dependent => :destroy
	
	validates_numericality_of :code, :points
	validates_uniqueness_of :code
	validates_presence_of :name, :objectives, :contents
	
	def spring_versions
	  course_versions.reject { |course_version| course_version.in_fall? }
	end
	
	def fall_versions
	  course_versions.reject { |course_version| course_version.in_spring? }
	end
	
	def versions_in(season)
	  if season == :fall
			fall_versions
	  elsif season == :spring
			spring_versions
	  else
	    []
	  end
	end
	
	def in_spring?
	  spring_versions.length > 0
	end
	
	def in_fall?
	  fall_versions.length > 0
	end
	
	def to_s
	  name
	end
end