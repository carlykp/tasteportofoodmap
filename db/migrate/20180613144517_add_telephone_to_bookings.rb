class AddTelephoneToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :telephone, :string
  end
end
