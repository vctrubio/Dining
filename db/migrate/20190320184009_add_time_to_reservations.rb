class AddTimeToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :time, :time
  end
end
