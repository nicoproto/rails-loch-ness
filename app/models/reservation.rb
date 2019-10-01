class Reservation < ApplicationRecord
  belongs_to :monster
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true

  validates :status, inclusion: { in: %w[pending confirmed denied completed] }
end
