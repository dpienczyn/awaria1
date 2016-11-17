class CreatePracowniks < ActiveRecord::Migration[5.0]
  def change
    create_table :pracowniks do |t|
      t.references :stanowisko, foreign_key: true
      t.references :dzial, foreign_key: true
      t.text :nazwa
      t.text :stanowisko
      t.integer :telefon
      t.text :email

      t.timestamps
    end
  end
end
