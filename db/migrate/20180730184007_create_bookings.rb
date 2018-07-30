class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :lesson, foreign_key: true
      t.references :student, foreign_key: true
      t.datetime :time
      t.datetime :day
      t.integer :cost

      t.timestamps
    end
  end
end
