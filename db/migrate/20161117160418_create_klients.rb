class CreateKlients < ActiveRecord::Migration[5.0]
  def change
    create_table :klients do |t|
      t.text :nazwa
      t.integer :nip
      t.integer :kod_pocztowy
      t.text :poczta
      t.text :adres
      t.integer :telefon
      t.text :email

      t.timestamps
    end
  end
end
