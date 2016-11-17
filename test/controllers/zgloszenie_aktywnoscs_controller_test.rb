require 'test_helper'

class ZgloszenieAktywnoscsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zgloszenie_aktywnosc = zgloszenie_aktywnoscs(:one)
  end

  test "should get index" do
    get zgloszenie_aktywnoscs_url
    assert_response :success
  end

  test "should get new" do
    get new_zgloszenie_aktywnosc_url
    assert_response :success
  end

  test "should create zgloszenie_aktywnosc" do
    assert_difference('ZgloszenieAktywnosc.count') do
      post zgloszenie_aktywnoscs_url, params: { zgloszenie_aktywnosc: { tresc: @zgloszenie_aktywnosc.tresc, zgloszenie_id: @zgloszenie_aktywnosc.zgloszenie_id } }
    end

    assert_redirected_to zgloszenie_aktywnosc_url(ZgloszenieAktywnosc.last)
  end

  test "should show zgloszenie_aktywnosc" do
    get zgloszenie_aktywnosc_url(@zgloszenie_aktywnosc)
    assert_response :success
  end

  test "should get edit" do
    get edit_zgloszenie_aktywnosc_url(@zgloszenie_aktywnosc)
    assert_response :success
  end

  test "should update zgloszenie_aktywnosc" do
    patch zgloszenie_aktywnosc_url(@zgloszenie_aktywnosc), params: { zgloszenie_aktywnosc: { tresc: @zgloszenie_aktywnosc.tresc, zgloszenie_id: @zgloszenie_aktywnosc.zgloszenie_id } }
    assert_redirected_to zgloszenie_aktywnosc_url(@zgloszenie_aktywnosc)
  end

  test "should destroy zgloszenie_aktywnosc" do
    assert_difference('ZgloszenieAktywnosc.count', -1) do
      delete zgloszenie_aktywnosc_url(@zgloszenie_aktywnosc)
    end

    assert_redirected_to zgloszenie_aktywnoscs_url
  end
end
