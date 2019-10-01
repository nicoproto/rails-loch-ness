class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :monsters, dependent: :destroy
  has_many :reservations
  has_many :messages
  has_many :reviews

  validates :name, presence: true
  validates :avatar, presence: true
end
