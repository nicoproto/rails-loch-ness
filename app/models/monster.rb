class Monster < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :photo, presence: true
  validates :price, presence: true
  validates :description, length: { in: 50..500 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
