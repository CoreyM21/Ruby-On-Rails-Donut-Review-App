class CreateDonuts < ActiveRecord::Migration[6.1]
  def change
    create_table :donuts do |t|
      t.string :name
      t.string :color
      t.string :location

      t.timestamps
    end
  end
end
