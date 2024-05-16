require "test_helper"

class SecuredPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get secured_pages_dashboard_url
    assert_response :success
  end

  test "should get documentation" do
    get secured_pages_documentation_url
    assert_response :success
  end

  test "should get companies" do
    get secured_pages_companies_url
    assert_response :success
  end
end
