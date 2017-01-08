class ZgloszenieKartaPdf < Prawn::Document
  def initialize(zgloszenie)
    super :page_size => "A5", :page_layout => :landscape
    @zgloszenie = zgloszenie
    zgloszenie_number
    zgloszenie_content
    zgloszenie_notatki_lines
  end

  def zgloszenie_number
    font("app/assets/fonts/SourceSansPro-Bold.ttf", size: 30) do
      text "Zgłoszenie numer #{@zgloszenie.id}."
    end
  end

  def zgloszenie_content
    move_down 20
    font("app/assets/fonts/SourceSansPro-Regular.ttf", size: 14) do
      text "Dział: #{Dzial.where(id:@zgloszenie.dzial_id).pluck(:nazwa).last}"
      text "Priorytet: #{@zgloszenie.priorytet} Status: #{@zgloszenie.status} Wysylka: #{@zgloszenie.wysylka}"
      text "Data Zgłoszenia: #{@zgloszenie.data_zgloszenia} Data Naprawy: #{@zgloszenie.data_naprawy}"
      text " "
      text "Nazwa Urządzenia: #{@zgloszenie.nazwa_urzadzenia}"
      text "Opisz Uszkodzenia: #{@zgloszenie.opis_uszkodzenia}"
      text " "
    end
  end

  def zgloszenie_notatki_lines
    move_down 20
      font("app/assets/fonts/SourceSansPro-Regular.ttf", size: 10) do
        table zgloszenie_notatki_rows do
          columns(1..8).align = :right
          columns(0..8).size = 10
          self.row_colors = ["DDDDDD", "FFFFFF"]
          self.header = true
        end
      end
  end

  def zgloszenie_notatki_rows
    [["Imię", "Nazwisko", "Data", "Treść Wiadomości"]] +
    ZgloszenieAktywnosc.select{|a| a.zgloszenie_id == @zgloszenie.id }.map do |zgloszenie_aktywnosc|
      [User.where(id:zgloszenie_aktywnosc.user_id).pluck(:first_name).last,
        User.where(id:zgloszenie_aktywnosc.user_id).pluck(:last_name).last,
        zgloszenie_aktywnosc.created_at.strftime("%H:%M, %d.%m.%Y"),
        zgloszenie_aktywnosc.tresc]
    end
  end

end
