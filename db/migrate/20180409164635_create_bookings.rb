class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :restaurant, foreign_key: true
      t.date :date
      t.time :time_1
      t.time :time_2
      t.integer :guests
      t.string :email
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
