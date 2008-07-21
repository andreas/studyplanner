class CoursesController < ApplicationController
  def search
  
    if params[:modules]
      modules = params[:modules].map { |m| ['E'+m, 'F'+m] }.flatten!
    
      @courses = Course.find_by_sql ["SELECT * FROM courses AS c
                                      WHERE (name LIKE ? OR code LIKE ?) AND EXISTS (
                                        SELECT * FROM course_versions AS cv
                                        LEFT JOIN locations AS l ON l.course_version_id = cv.id
                                        LEFT JOIN timetable_modules AS ttm ON l.timetable_module_id = ttm.id
                                        WHERE cv.course_id = c.id AND ttm.name in (?))", "%#{params[:course_filter]}%", "%#{params[:course_filter]}%", modules]
    else
      @courses = Course.find(:all, :conditions => ["name LIKE ? OR code LIKE ?", "%#{params[:course_filter]}%", "%#{params[:course_filter]}%"])
    end
    
    @studyplan = Studyplan.find(session[:studyplan])
    
    render :layout => false
  end
end