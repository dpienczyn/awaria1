class AddUserIdToPracowniks < ActiveRecord::Migration[5.0]
  def change
    add_column :pracowniks, :user_id, :integer
  end
end
