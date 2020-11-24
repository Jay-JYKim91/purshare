class ChangeTimeToBeDateInBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :start_time
    add_column :bookings, :start_date, :date
    remove_column :bookings, :end_time
    add_column :bookings, :end_date, :date
  end
end
