class Monster < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :photo, presence: true
  validates :price, presence: true
  validates :description, length: { in: 50..500 }
end
