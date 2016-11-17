class CreateZgloszenieAktywnoscs < ActiveRecord::Migration[5.0]
  def change
    create_table :zgloszenie_aktywnoscs do |t|
      t.references :zgloszenie, foreign_key: true
      t.text :tresc

      t.timestamps
    end
  end
end
