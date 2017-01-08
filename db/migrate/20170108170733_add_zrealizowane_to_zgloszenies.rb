class AddZrealizowaneToZgloszenies < ActiveRecord::Migration[5.0]
  def change
    add_column :zgloszenies, :zrealizowane, :boolean
  end
end
