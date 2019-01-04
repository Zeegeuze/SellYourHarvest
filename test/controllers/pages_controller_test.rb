require 'application_system_test_case'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get T&Q" do
    get "/T&Q"
    assert_response :success
  end

  test "should get FAQ" do
    get "/FAQ"
    assert_response :success
  end

  test "should get contact" do
    get "/contact"
    assert_response :success
  end

  test "should get about" do
    get "/about"
    assert_response :success
  end

end
