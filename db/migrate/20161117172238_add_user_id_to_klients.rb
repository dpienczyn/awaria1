class AddUserIdToKlients < ActiveRecord::Migration[5.0]
  def change
    add_column :klients, :user_id, :integer
  end
end
