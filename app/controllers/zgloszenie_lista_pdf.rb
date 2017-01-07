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
      font("app/assets/fonts/SourceSansPro-Regular.ttf", size: 30) do
        table zgloszenie_lines_rows do
          # row(0).font_style = :bold
          columns(1..8).align = :right
          columns(0..8).size = 10
          self.row_colors = ["DDDDDD", "FFFFFF"]
          self.header = true
        end
      end
  end

  def zgloszenie_lines_rows
    [["ID", "Dzial", "Priorytet", "Status", "Data zgloszenia", "Data naprawy", "Nazwa Urzadzenia", "Opis Uszkodzenia"]] +
    @zgloszenies.map do |zgloszenie|
      [zgloszenie.id.to_s, Dzial.where(id:zgloszenie.dzial_id).pluck(:nazwa).last, zgloszenie.priorytet.to_s, zgloszenie.status.to_s, zgloszenie.data_zgloszenia.to_s, zgloszenie.data_naprawy.to_s, zgloszenie.nazwa_urzadzenia, zgloszenie.opis_uszkodzenia]
    end
  end
end
