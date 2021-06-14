require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @consultant = consultants(:one)
    @employee = employees(:one)
  end

  test "should get index" do
    get :index, params: { consultant_id: @consultant }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { consultant_id: @consultant }
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, params: { consultant_id: @consultant, employee: @employee.attributes }
    end

    assert_redirected_to consultant_employee_path(@consultant, Employee.last)
  end

  test "should show employee" do
    get :show, params: { consultant_id: @consultant, id: @employee }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { consultant_id: @consultant, id: @employee }
    assert_response :success
  end

  test "should update employee" do
    put :update, params: { consultant_id: @consultant, id: @employee, employee: @employee.attributes }
    assert_redirected_to consultant_employee_path(@consultant, Employee.last)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, params: { consultant_id: @consultant, id: @employee }
    end

    assert_redirected_to consultant_employees_path(@consultant)
  end
end
