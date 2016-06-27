require 'test_helper'

class FromagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get region" do
    get :region
    assert_response :success
  end

  test "should get categorie" do
    get :categorie
    assert_response :success
  end

  test "should get detail" do
    get :detail
    assert_response :success
  end

end
