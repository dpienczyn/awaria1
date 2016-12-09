class AddUserDzialToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :dzial, foreign_key: true
  end
end
