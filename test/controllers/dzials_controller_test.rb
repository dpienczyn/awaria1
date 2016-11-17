require 'test_helper'

class DzialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dzial = dzials(:one)
  end

  test "should get index" do
    get dzials_url
    assert_response :success
  end

  test "should get new" do
    get new_dzial_url
    assert_response :success
  end

  test "should create dzial" do
    assert_difference('Dzial.count') do
      post dzials_url, params: { dzial: { nazwa: @dzial.nazwa } }
    end

    assert_redirected_to dzial_url(Dzial.last)
  end

  test "should show dzial" do
    get dzial_url(@dzial)
    assert_response :success
  end

  test "should get edit" do
    get edit_dzial_url(@dzial)
    assert_response :success
  end

  test "should update dzial" do
    patch dzial_url(@dzial), params: { dzial: { nazwa: @dzial.nazwa } }
    assert_redirected_to dzial_url(@dzial)
  end

  test "should destroy dzial" do
    assert_difference('Dzial.count', -1) do
      delete dzial_url(@dzial)
    end

    assert_redirected_to dzials_url
  end
end
