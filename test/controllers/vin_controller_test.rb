require 'test_helper'

class VinControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get region" do
    get :region
    assert_response :success
  end

  test "should get classe" do
    get :classe
    assert_response :success
  end

  test "should get cepage" do
    get :cepage
    assert_response :success
  end

end
