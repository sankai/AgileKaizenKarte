require 'test_helper'

class StudentlogsControllerTest < ActionController::TestCase
  setup do
    @studentlog = studentlogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studentlogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studentlog" do
    assert_difference('Studentlog.count') do
      post :create, studentlog: { student_id: @studentlog.student_id }
    end

    assert_redirected_to studentlog_path(assigns(:studentlog))
  end

  test "should show studentlog" do
    get :show, id: @studentlog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @studentlog
    assert_response :success
  end

  test "should update studentlog" do
    patch :update, id: @studentlog, studentlog: { student_id: @studentlog.student_id }
    assert_redirected_to studentlog_path(assigns(:studentlog))
  end

  test "should destroy studentlog" do
    assert_difference('Studentlog.count', -1) do
      delete :destroy, id: @studentlog
    end

    assert_redirected_to studentlogs_path
  end
end
