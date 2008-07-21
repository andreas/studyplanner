class UsersController < ApplicationController
  layout "rounded_box"

  # GET /users/1
  # GET /users/1.xml
  def auth
    @user = User.authenticate(params[:user][:email], params[:user][:password])
    
    if @user
      session[:user] = @user.id
      session[:studyplan] = @user.studyplan.id
      render(:update) do |page|
        page.redirect_to home_url
      end
    else
      render(:update) do |page|
        page['errors'].replace_html(error_messages_for('user'))
        page['errors'].visual_effect :appear
      end
    end
  end
  
  def login
  end

  # GET /users/new
  def new
    @user = User.new
  end
  
  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user].merge({ "studyplan" => Studyplan.find(session[:studyplan]) }))
    
    if @user.save
      session[:user]= @user.id
      render(:update) do |page|
        page.call 'RedBox.close'
        page['auth'].replace_html "Hello #{@user.email}!"
        page['auth'].visual_effect :highlight
      end
    else
      render(:update) do |page|
        page['errors'].replace_html error_messages_for('user')
        page['errors'].visual_effect :appear
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:notice] = 'User was successfully updated.'
        format.html { redirect_to user_url(@user) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors.to_xml }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.xml  { head :ok }
    end
  end
end
