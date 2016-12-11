class AddUserIdToZgloszenies < ActiveRecord::Migration[5.0]
  def change
    add_column :zgloszenies, :user_id, :integer
  end
end
