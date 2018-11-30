require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get first_name" do
    get customers_first_name_url
    assert_response :success
  end

  test "should get last_name" do
    get customers_last_name_url
    assert_response :success
  end

  test "should get city" do
    get customers_city_url
    assert_response :success
  end

end
