class AddDonutToReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :donut, null: false, foreign_key: true
  end
end
