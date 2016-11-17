require 'test_helper'

class PracowniksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pracownik = pracowniks(:one)
  end

  test "should get index" do
    get pracowniks_url
    assert_response :success
  end

  test "should get new" do
    get new_pracownik_url
    assert_response :success
  end

  test "should create pracownik" do
    assert_difference('Pracownik.count') do
      post pracowniks_url, params: { pracownik: { dzial_id: @pracownik.dzial_id, email: @pracownik.email, nazwa: @pracownik.nazwa, stanowisko: @pracownik.stanowisko, stanowisko_id: @pracownik.stanowisko_id, telefon: @pracownik.telefon } }
    end

    assert_redirected_to pracownik_url(Pracownik.last)
  end

  test "should show pracownik" do
    get pracownik_url(@pracownik)
    assert_response :success
  end

  test "should get edit" do
    get edit_pracownik_url(@pracownik)
    assert_response :success
  end

  test "should update pracownik" do
    patch pracownik_url(@pracownik), params: { pracownik: { dzial_id: @pracownik.dzial_id, email: @pracownik.email, nazwa: @pracownik.nazwa, stanowisko: @pracownik.stanowisko, stanowisko_id: @pracownik.stanowisko_id, telefon: @pracownik.telefon } }
    assert_redirected_to pracownik_url(@pracownik)
  end

  test "should destroy pracownik" do
    assert_difference('Pracownik.count', -1) do
      delete pracownik_url(@pracownik)
    end

    assert_redirected_to pracowniks_url
  end
end
