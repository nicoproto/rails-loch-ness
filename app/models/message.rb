class Message < ApplicationRecord
  belongs_to :user
  belongs_to :conversation

  validates :text, length: { in: 50..500 }
end
