class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :horse_id, null: false, foreign_key: true
      t.references :user_id, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :total_price
      t.string :status

      t.timestamps
    end
  end
end
