class AddVisibleToZgloszenies < ActiveRecord::Migration[5.0]
  def change
    add_column :zgloszenies, :visible, :boolean, :default => true
  end
end
