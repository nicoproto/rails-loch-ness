class AddBuyerAndSellerToConversations < ActiveRecord::Migration[5.2]
  def change
    add_reference :conversations, :user, null: false, foreign_key: true
    add_reference :conversations, :monster, null: false, foreign_key: true
  end
end
