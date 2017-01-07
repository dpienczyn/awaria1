class ZgloszenieKartaPdf < Prawn::Document
  def initialize(zgloszenie)
    super()
    @zgloszenie = zgloszenie
    zgloszenie_number
    zgloszenie_content
  end

  def zgloszenie_number
    font("app/assets/fonts/SourceSansPro-Regular.ttf", size: 30) do
      text "Zgłoszenie numer #{@zgloszenie.id}"
    end
  end

  def zgloszenie_content
    move_down 20
    font("app/assets/fonts/SourceSansPro-Regular.ttf", size: 14) do
      text "Dzialł: #{Dzial.where(id:@zgloszenie.dzial_id).pluck(:nazwa).last}"
      text "Priorytet: #{@zgloszenie.priorytet} Status: #{@zgloszenie.status} Wysylka: #{@zgloszenie.wysylka}"
      text "Data Zgłoszenia: #{@zgloszenie.data_zgloszenia} Data Naprawy: #{@zgloszenie.data_naprawy}"
      text "Nazwa Urządzenia: #{@zgloszenie.nazwa_urzadzenia} Opisz Uszkodzenia: #{@zgloszenie.opis_uszkodzenia}"
    end
    end
end
