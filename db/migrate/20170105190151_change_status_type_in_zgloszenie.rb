class ChangeStatusTypeInZgloszenie < ActiveRecord::Migration[5.0]
  def change
  	Zgloszenie.update_all(status: 0)
  	change_column(:zgloszenies, :status, 'integer USING CAST(status AS integer)', default: 0)
  end
end
