require 'test_helper'

class StanowiskosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stanowisko = stanowiskos(:one)
  end

  test "should get index" do
    get stanowiskos_url
    assert_response :success
  end

  test "should get new" do
    get new_stanowisko_url
    assert_response :success
  end

  test "should create stanowisko" do
    assert_difference('Stanowisko.count') do
      post stanowiskos_url, params: { stanowisko: { nazwa: @stanowisko.nazwa } }
    end

    assert_redirected_to stanowisko_url(Stanowisko.last)
  end

  test "should show stanowisko" do
    get stanowisko_url(@stanowisko)
    assert_response :success
  end

  test "should get edit" do
    get edit_stanowisko_url(@stanowisko)
    assert_response :success
  end

  test "should update stanowisko" do
    patch stanowisko_url(@stanowisko), params: { stanowisko: { nazwa: @stanowisko.nazwa } }
    assert_redirected_to stanowisko_url(@stanowisko)
  end

  test "should destroy stanowisko" do
    assert_difference('Stanowisko.count', -1) do
      delete stanowisko_url(@stanowisko)
    end

    assert_redirected_to stanowiskos_url
  end
end
