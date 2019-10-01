class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :end_date
      t.decimal :total_price
      t.string :status

      t.references :monster, foreign_key: true
      t.references :user, foreign_key: true
      t.references :review, foreign_key: true
      t.timestamps
    end
  end
end
