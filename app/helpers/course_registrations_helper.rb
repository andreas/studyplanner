module CourseRegistrationsHelper

  def year_image(course_version)
    output = ""
    output << semester_image(course_version.spring_locations, :spring, "#{dom_id(course_version)}_option") if course_version.in_spring?
    output << semester_image(course_version.fall_locations, :fall, "#{dom_id(course_version)}_option")     if course_version.in_fall?
    
    output
  end

  private

  def semester_image(locations, season, id)
    overlay = locations.inject("") do |inner, location|
      content_tag_string :div, inner, :style => "background-image: url(#{image_path(location.timetable_module.seasonless_name+'.png')}); width: 77px; height: 57px;"
    end

    content_tag_string :div, overlay, :class => season, :style => "background-image: url(#{image_path('timetable_blank.png')}); width: 77px; height: 57px; padding: 3px; background-position: center center; background-repeat: no-repeat;", :onclick => "$('#{id}').checked = true;"
  end
end
