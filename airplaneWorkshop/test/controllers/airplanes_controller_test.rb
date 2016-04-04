require 'test_helper'

class AirplanesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @airplane = airplanes(:one)
  end

  test "should get index" do
    get airplanes_url
    assert_response :success
  end

  test "should get new" do
    get new_airplane_url
    assert_response :success
  end

  test "should create airplane" do
    assert_difference('Airplane.count') do
      post airplanes_url, params: { airplane: { brand: @airplane.brand, fault: @airplane.fault, model: @airplane.model } }
    end

    assert_redirected_to airplane_path(Airplane.last)
  end

  test "should show airplane" do
    get airplane_url(@airplane)
    assert_response :success
  end

  test "should get edit" do
    get edit_airplane_url(@airplane)
    assert_response :success
  end

  test "should update airplane" do
    patch airplane_url(@airplane), params: { airplane: { brand: @airplane.brand, fault: @airplane.fault, model: @airplane.model } }
    assert_redirected_to airplane_path(@airplane)
  end

  test "should destroy airplane" do
    assert_difference('Airplane.count', -1) do
      delete airplane_url(@airplane)
    end

    assert_redirected_to airplanes_path
  end
end
