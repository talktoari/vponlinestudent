require 'test_helper'

class OnlineStudentsControllerTest < ActionController::TestCase
  setup do
    @online_student = online_students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:online_students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create online_student" do
    assert_difference('OnlineStudent.count') do
      post :create, online_student: @online_student.attributes
    end

    assert_redirected_to online_student_path(assigns(:online_student))
  end

  test "should show online_student" do
    get :show, id: @online_student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @online_student
    assert_response :success
  end

  test "should update online_student" do
    put :update, id: @online_student, online_student: @online_student.attributes
    assert_redirected_to online_student_path(assigns(:online_student))
  end

  test "should destroy online_student" do
    assert_difference('OnlineStudent.count', -1) do
      delete :destroy, id: @online_student
    end

    assert_redirected_to online_students_path
  end
end
