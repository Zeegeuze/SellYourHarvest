require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get T&Q" do
    get pages_T&Q_url
    assert_response :success
  end

  test "should get FAQ" do
    get pages_FAQ_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

end
