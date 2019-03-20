class AddGuestsToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :guests, :integer
  end
end
