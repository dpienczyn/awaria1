require 'test_helper'

class ZgloszeniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zgloszeny = zgloszenies(:one)
  end

  test "should get index" do
    get zgloszenies_url
    assert_response :success
  end

  test "should get new" do
    get new_zgloszeny_url
    assert_response :success
  end

  test "should create zgloszeny" do
    assert_difference('Zgloszenie.count') do
      post zgloszenies_url, params: { zgloszeny: { data_naprawy: @zgloszeny.data_naprawy, data_zgloszenia: @zgloszeny.data_zgloszenia, dzial_id: @zgloszeny.dzial_id, klient_id: @zgloszeny.klient_id, nazwa_urzadzenia: @zgloszeny.nazwa_urzadzenia, opis_uszkodzenia: @zgloszeny.opis_uszkodzenia, pracownik_id: @zgloszeny.pracownik_id, priorytet: @zgloszeny.priorytet, status: @zgloszeny.status, wysylka: @zgloszeny.wysylka } }
    end

    assert_redirected_to zgloszeny_url(Zgloszenie.last)
  end

  test "should show zgloszeny" do
    get zgloszeny_url(@zgloszeny)
    assert_response :success
  end

  test "should get edit" do
    get edit_zgloszeny_url(@zgloszeny)
    assert_response :success
  end

  test "should update zgloszeny" do
    patch zgloszeny_url(@zgloszeny), params: { zgloszeny: { data_naprawy: @zgloszeny.data_naprawy, data_zgloszenia: @zgloszeny.data_zgloszenia, dzial_id: @zgloszeny.dzial_id, klient_id: @zgloszeny.klient_id, nazwa_urzadzenia: @zgloszeny.nazwa_urzadzenia, opis_uszkodzenia: @zgloszeny.opis_uszkodzenia, pracownik_id: @zgloszeny.pracownik_id, priorytet: @zgloszeny.priorytet, status: @zgloszeny.status, wysylka: @zgloszeny.wysylka } }
    assert_redirected_to zgloszeny_url(@zgloszeny)
  end

  test "should destroy zgloszeny" do
    assert_difference('Zgloszenie.count', -1) do
      delete zgloszeny_url(@zgloszeny)
    end

    assert_redirected_to zgloszenies_url
  end
end
