class AddPracownikIdToZgloszenies < ActiveRecord::Migration[5.0]
  def change
    add_column :zgloszenies, :pracownikid, :integer
  end
end
