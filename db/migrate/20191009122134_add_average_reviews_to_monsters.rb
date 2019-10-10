class AddAverageReviewsToMonsters < ActiveRecord::Migration[5.2]
  def change
    add_column :monsters, :avg_reviews, :float, default: 0
  end
end
