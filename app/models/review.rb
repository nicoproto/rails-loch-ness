class Review < ApplicationRecord
  belongs_to :monster
  belongs_to :user
  # belongs_to :reservation

  validates :text, length: { in: 50..500 }
  validates :integer, inclusion: { in: [1, 2, 3, 4, 5] }
end
