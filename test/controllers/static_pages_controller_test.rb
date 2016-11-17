require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get paneladmina" do
    get static_pages_paneladmina_url
    assert_response :success
  end

  test "should get instalacja" do
    get static_pages_instalacja_url
    assert_response :success
  end

end
