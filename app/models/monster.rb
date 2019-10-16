class Monster < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :conversations

  validates :name, presence: true
  validates :photo, presence: true
  validates :price, presence: true
  validates :description, length: { in: 50..500 }

  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
