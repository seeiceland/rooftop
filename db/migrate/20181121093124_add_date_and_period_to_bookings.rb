class AddDateAndPeriodToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :date, :datetime
    add_column :bookings, :period, :string
    remove_column :bookings, :duration
  end
end
