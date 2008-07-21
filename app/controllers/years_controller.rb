class YearsController < ApplicationController
  in_place_edit_for :year, :title
  
  def create
    @year = Year.new(params[:year])
    if @year.save
      render(:update) do |page|
        page.insert_html :bottom, 'studyplan', :partial => 'shared/year'
        page.visual_effect :highlight, dom_id(@year), :duration => 1
      end
    else
      render(:update) do |page|
        @year.errors.each_full do |msg|
          page.insert_html :bottom, 'errors', msg
        end
      end
    end
  end
  
  def destroy
    @year = Year.find(params[:id])
    @year.destroy
    
    render(:update) do |page|
      page.visual_effect :fade, dom_id(@year), :duration => 0.5
    end
  end
end