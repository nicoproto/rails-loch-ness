class Review < ApplicationRecord
  after_create :update_average

  belongs_to :monster
  belongs_to :user
  belongs_to :reservation

  validates :text, length: { in: 50..500 }
  validates :integer, inclusion: { in: [1, 2, 3, 4, 5] }

  private

  def update_average
    total_number = monster.reviews.count
    reviews_sum = monster.reviews.sum(:integer)
    monster.avg_reviews = reviews_sum / total_number.to_f
    monster.save
  end
end
