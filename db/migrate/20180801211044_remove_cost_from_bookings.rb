class RemoveCostFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :cost, :integer
  end
end
