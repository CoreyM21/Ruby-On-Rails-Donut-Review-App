class AddUserToDonuts < ActiveRecord::Migration[6.1]
  def change
    add_reference :donuts, :user, null: false, foreign_key: true
  end
end
