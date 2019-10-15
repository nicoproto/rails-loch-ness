class Message < ApplicationRecord
  belongs_to :user
  belongs_to :conversation

  validates :text, presence: true
end
