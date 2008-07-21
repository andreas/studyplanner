class CourseRegistration < ActiveRecord::Base
  belongs_to :year
  belongs_to :course_version
  
  validates_presence_of :year_id
  validates_presence_of :course_version_id
  
  def set_defaults(years, course)
    if !year && !course_version
      self.year = years.last
      self.course_version = course.course_versions.first
    end
    self
  end
  
  def course_name
    course_version.course.name
  end
  
  def course_code
    course_version.course.code
  end
end