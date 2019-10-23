class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :monsters, dependent: :destroy
  has_many :reservations
  has_many :messages
  has_many :reviews
  has_many :conversations

  validates :name, presence: true
  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader
end
