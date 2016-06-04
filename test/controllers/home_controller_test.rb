require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get blank" do
    get :blank
    assert_response :success
  end

  test "should get basic_table" do
    get :basic_table
    assert_response :success
  end

  test "should get buttons" do
    get :buttons
    assert_response :success
  end

  test "should get form_component" do
    get :form_component
    assert_response :success
  end

  test "should get gallery" do
    get :gallery
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

end
