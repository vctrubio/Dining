class AddRatingToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :rating, :integer
  end
end
