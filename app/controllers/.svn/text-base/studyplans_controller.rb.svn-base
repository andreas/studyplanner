class StudyplansController < ApplicationController
  in_place_edit_for :year, :title
  
  # GET /studyplans
  # GET /studyplans.xml
  def index
    if session[:studyplan]
      @studyplan = Studyplan.find(session[:studyplan])
      if @studyplan.user && @studyplan.user.id != session[:user]
        session[:studyplan] = session[:user] = nil
        flash[:error] = 'Please log in.'
        redirect_to studyplans_url
      end
    else
      @studyplan = Studyplan.create
      session[:studyplan] = @studyplan.id
    end

    respond_to do |format|
      format.html { render :action => "show" }
      format.xml  { render :xml => @studyplan.to_xml }
    end
  end

  # GET /studyplans/1
  # GET /studyplans/1.xml
  def show
    @studyplan = Studyplan.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @studyplan.to_xml }
    end
  end

  # GET /studyplans/new
  def new
    @studyplan = Studyplan.new
  end

  # GET /studyplans/1;edit
  def edit
    @studyplan = Studyplan.find(params[:id])
  end

  # POST /studyplans
  # POST /studyplans.xml
  def create
    @studyplan = Studyplan.new(params[:studyplan])

    respond_to do |format|
      if @studyplan.save
        flash[:notice] = 'Studyplan was successfully created.'
        format.html { redirect_to studyplan_url(@studyplan) }
        format.xml  { head :created, :location => studyplan_url(@studyplan) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @studyplan.errors.to_xml }
      end
    end
  end

  # PUT /studyplans/1
  # PUT /studyplans/1.xml
  def update
    @studyplan = Studyplan.find(params[:id])

    respond_to do |format|
      if @studyplan.update_attributes(params[:studyplan])
        flash[:notice] = 'Studyplan was successfully updated.'
        format.html { redirect_to studyplan_url(@studyplan) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @studyplan.errors.to_xml }
      end
    end
  end

  # DELETE /studyplans/1
  # DELETE /studyplans/1.xml
  def destroy
    @studyplan = Studyplan.find(params[:id])
    @studyplan.destroy

    respond_to do |format|
      format.html { redirect_to studyplans_url }
      format.xml  { head :ok }
    end
  end
end
