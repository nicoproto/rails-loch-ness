class RemoveReviewId < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :review_id
    add_reference :reviews, :reservation, null: false, foreign_key: true
  end
end
