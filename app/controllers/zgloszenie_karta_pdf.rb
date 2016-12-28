class ZgloszenieKartaPdf < Prawn::Document
  def initialize(zgloszenie)
    super()
    @zgloszenie = zgloszenie
    zgloszenie_number
    zgloszenie_content
  end

  def zgloszenie_number
    text "Zgloszenie numer #{@zgloszenie.id}", size: 30
  end

  def zgloszenie_content
    move_down 20
    text "Dzial: #{Dzial.where(id:@zgloszenie.dzial_id).pluck(:nazwa).last}"
    text "Priorytet: #{@zgloszenie.priorytet} Status: #{@zgloszenie.status} Wysylka: #{@zgloszenie.wysylka}"
    text "Data Zgloszenia: #{@zgloszenie.data_zgloszenia} Data Naprawy: #{@zgloszenie.data_naprawy}"
    text "Nazwa Urzadzenia: #{@zgloszenie.nazwa_urzadzenia} Opisz Uszkodzenia: #{@zgloszenie.opis_uszkodzenia}"
    end
end
