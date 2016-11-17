require 'test_helper'

class KlientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @klient = klients(:one)
  end

  test "should get index" do
    get klients_url
    assert_response :success
  end

  test "should get new" do
    get new_klient_url
    assert_response :success
  end

  test "should create klient" do
    assert_difference('Klient.count') do
      post klients_url, params: { klient: { adres: @klient.adres, email: @klient.email, kod_pocztowy: @klient.kod_pocztowy, nazwa: @klient.nazwa, nip: @klient.nip, poczta: @klient.poczta, telefon: @klient.telefon } }
    end

    assert_redirected_to klient_url(Klient.last)
  end

  test "should show klient" do
    get klient_url(@klient)
    assert_response :success
  end

  test "should get edit" do
    get edit_klient_url(@klient)
    assert_response :success
  end

  test "should update klient" do
    patch klient_url(@klient), params: { klient: { adres: @klient.adres, email: @klient.email, kod_pocztowy: @klient.kod_pocztowy, nazwa: @klient.nazwa, nip: @klient.nip, poczta: @klient.poczta, telefon: @klient.telefon } }
    assert_redirected_to klient_url(@klient)
  end

  test "should destroy klient" do
    assert_difference('Klient.count', -1) do
      delete klient_url(@klient)
    end

    assert_redirected_to klients_url
  end
end
