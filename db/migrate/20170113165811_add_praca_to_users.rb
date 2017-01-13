class AddPracaToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :praca, :integer
  end
end
