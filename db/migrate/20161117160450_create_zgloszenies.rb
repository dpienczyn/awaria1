class CreateZgloszenies < ActiveRecord::Migration[5.0]
  def change
    create_table :zgloszenies do |t|
      t.references :dzial, foreign_key: true
      t.text :priorytet
      t.text :status
      t.date :data_zgloszenia
      t.date :data_naprawy
      t.text :opis_uszkodzenia
      t.text :nazwa_urzadzenia
      t.boolean :wysylka

      t.timestamps
    end
  end
end
