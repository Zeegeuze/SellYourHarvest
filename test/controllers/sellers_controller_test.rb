require 'test_helper'

class SellersControllerTest < ActionDispatch::IntegrationTest
  test "should get company_name" do
    get sellers_company_name_url
    assert_response :success
  end

  test "should get contact_person" do
    get sellers_contact_person_url
    assert_response :success
  end

  test "should get address" do
    get sellers_address_url
    assert_response :success
  end

end
