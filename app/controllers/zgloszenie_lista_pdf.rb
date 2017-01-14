class ZgloszenieListaPdf < Prawn::Document

  def initialize(zgloszenies, user)
    super()
    @zgloszenies = zgloszenies
    @user = user
    zgloszenie_header
    zgloszenie_lines
  end

  def zgloszenie_header
    font("app/assets/fonts/SourceSansPro-Regular.ttf", size: 24) do
      text "Lista Zgłoszeń użytkownika: #{User.where(id:@user).pluck(:first_name).last} #{User.where(id:@user).pluck(:last_name).last}."
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
    @zgloszenies.select{|a| a.user_id == @user}.map do |zgloszenie|
      index += 1
      [index,
        Dzial.where(id:zgloszenie.dzial_id).pluck(:nazwa).last,
        zgloszenie.priorytet.to_s, zgloszenie.status.to_s,
        zgloszenie.data_zgloszenia.to_s,
        zgloszenie.data_naprawy.to_s,
        zgloszenie.nazwa_urzadzenia,
        zgloszenie.opis_uszkodzenia]
    end
  end
end
