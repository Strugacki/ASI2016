require 'test_helper'

class PlanesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plane = planes(:one)
  end

  test "should get index" do
    get planes_url
    assert_response :success
  end

  test "should get new" do
    get new_plane_url
    assert_response :success
  end

  test "should create plane" do
    assert_difference('Plane.count') do
      post planes_url, params: { plane: { brand: @plane.brand, fault: @plane.fault, model: @plane.model } }
    end

    assert_redirected_to plane_path(Plane.last)
  end

  test "should show plane" do
    get plane_url(@plane)
    assert_response :success
  end

  test "should get edit" do
    get edit_plane_url(@plane)
    assert_response :success
  end

  test "should update plane" do
    patch plane_url(@plane), params: { plane: { brand: @plane.brand, fault: @plane.fault, model: @plane.model } }
    assert_redirected_to plane_path(@plane)
  end

  test "should destroy plane" do
    assert_difference('Plane.count', -1) do
      delete plane_url(@plane)
    end

    assert_redirected_to planes_path
  end
end
