class DeleteReviewsFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :reviews, :integer
  end
end
