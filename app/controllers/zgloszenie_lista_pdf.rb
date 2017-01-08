class ZgloszenieListaPdf < Prawn::Document

  def initialize(zgloszenies)
    super()
    @zgloszenies = zgloszenies
    zgloszenie_header
    zgloszenie_lines
  end

  def zgloszenie_header
    font("app/assets/fonts/SourceSansPro-Regular.ttf", size: 30) do
      text "Lista Zgłoszeń"
    end
  end

  def zgloszenie_lines
    move_down 20
      font("app/assets/fonts/SourceSansPro-Regular.ttf", size: 10) do
        table zgloszenie_lines_rows do
          columns(1..8).align = :right
          columns(0..8).size = 10
          self.row_colors = ["DDDDDD", "FFFFFF"]
          self.header = true
        end
      end
  end

  def zgloszenie_lines_rows
    index = 0
    [["LP", "Dział", "Priorytet", "Status", "Data zgłoszenia", "Data naprawy", "Nazwa Urządzenia", "Opis Uszkodzenia"]] +
    @zgloszenies.map do |zgloszenie|
      index += 1
      [index, Dzial.where(id:zgloszenie.dzial_id).pluck(:nazwa).last, zgloszenie.priorytet.to_s, zgloszenie.status.to_s, zgloszenie.data_zgloszenia.to_s, zgloszenie.data_naprawy.to_s, zgloszenie.nazwa_urzadzenia, zgloszenie.opis_uszkodzenia]
    end
  end
end
