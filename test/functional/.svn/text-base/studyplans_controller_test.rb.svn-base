require File.dirname(__FILE__) + '/../test_helper'
require 'studyplans_controller'

# Re-raise errors caught by the controller.
class StudyplansController; def rescue_action(e) raise e end; end

class StudyplansControllerTest < Test::Unit::TestCase
  fixtures :studyplans

  def setup
    @controller = StudyplansController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:studyplans)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_studyplan
    old_count = Studyplan.count
    post :create, :studyplan => { }
    assert_equal old_count+1, Studyplan.count
    
    assert_redirected_to studyplan_path(assigns(:studyplan))
  end

  def test_should_show_studyplan
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_studyplan
    put :update, :id => 1, :studyplan => { }
    assert_redirected_to studyplan_path(assigns(:studyplan))
  end
  
  def test_should_destroy_studyplan
    old_count = Studyplan.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Studyplan.count
    
    assert_redirected_to studyplans_path
  end
end
