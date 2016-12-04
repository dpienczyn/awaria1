class AddStanowiskoIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :stanowisko, foreign_key: true
  end
end
