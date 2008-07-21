class CourseRegistrationsController < ApplicationController
  layout "rounded_box"
  in_place_edit_for :year, :title


  def new
    @years = Studyplan.find(session[:studyplan]).years
    @course = Course.find(params[:course])
    @course_registration = CourseRegistration.new.set_defaults(@years, @course)
  end

  def create
    @course_registration = CourseRegistration.new(params[:course_registration])
    
    if @course_registration.save
      render(:update) do |page|
        page.call 'RedBox.close'
        page.replace dom_id(@course_registration.year), :partial => 'shared/year', :object => @course_registration.year
        page.select("."+dom_id(@course_registration)).each do |element|
            page.visual_effect :highlight, element, :duration => 1
        end
      end
    else
      render(:update) do |page|
        @course_registration.errors.each_full do |msg|
          page.insert_html :bottom, "errors", msg
        end
      end
    end
  end
  
  def destroy
    @course_registration = CourseRegistration.find(params[:id])
    @course_registration.destroy
    
    render(:update) do |page|
			page.select(".#{dom_id(@course_registration)}").each do |element|
			  page.visual_effect :fade, element, :duration => 0.5
			end
			page["#{dom_id(@course_registration.year)}_fall_points"].replace_html @course_registration.year.points(:fall)
			page["#{dom_id(@course_registration.year)}_spring_points"].replace_html @course_registration.year.points(:spring)
    end
  end
end