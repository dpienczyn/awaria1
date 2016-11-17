class CreateStanowiskos < ActiveRecord::Migration[5.0]
  def change
    create_table :stanowiskos do |t|
      t.text :nazwa

      t.timestamps
    end
  end
end
