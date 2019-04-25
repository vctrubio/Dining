class RemoveOpenHourFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :open_hour, :integer
  end
end
