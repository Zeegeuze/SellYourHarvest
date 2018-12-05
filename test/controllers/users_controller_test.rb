require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get first_name" do
    get users_first_name_url
    assert_response :success
  end

  test "should get last_name" do
    get users_last_name_url
    assert_response :success
  end

  test "should get city" do
    get users_city_url
    assert_response :success
  end

end
