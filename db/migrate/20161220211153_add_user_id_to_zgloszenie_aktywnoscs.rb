class AddUserIdToZgloszenieAktywnoscs < ActiveRecord::Migration[5.0]
  def change
    add_column :zgloszenie_aktywnoscs, :user_id, :integer
  end
end
