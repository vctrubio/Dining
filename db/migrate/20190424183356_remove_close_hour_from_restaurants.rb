class RemoveCloseHourFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :close_hour, :integer
  end
end
