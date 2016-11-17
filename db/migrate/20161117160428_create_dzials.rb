class CreateDzials < ActiveRecord::Migration[5.0]
  def change
    create_table :dzials do |t|
      t.text :nazwa

      t.timestamps
    end
  end
end
