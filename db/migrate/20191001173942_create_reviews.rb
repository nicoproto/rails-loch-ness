class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :text
      t.integer :integer
      t.references :monster, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
