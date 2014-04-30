require 'test_helper'

class SessionlogsControllerTest < ActionController::TestCase
  setup do
    @sessionlog = sessionlogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sessionlogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sessionlog" do
    assert_difference('Sessionlog.count') do
      post :create, sessionlog: { session_id: @sessionlog.session_id }
    end

    assert_redirected_to sessionlog_path(assigns(:sessionlog))
  end

  test "should show sessionlog" do
    get :show, id: @sessionlog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sessionlog
    assert_response :success
  end

  test "should update sessionlog" do
    patch :update, id: @sessionlog, sessionlog: { session_id: @sessionlog.session_id }
    assert_redirected_to sessionlog_path(assigns(:sessionlog))
  end

  test "should destroy sessionlog" do
    assert_difference('Sessionlog.count', -1) do
      delete :destroy, id: @sessionlog
    end

    assert_redirected_to sessionlogs_path
  end
end
