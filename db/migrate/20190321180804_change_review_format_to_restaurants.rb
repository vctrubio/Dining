class ChangeReviewFormatToRestaurants < ActiveRecord::Migration[5.2]
  def change
    change_column :restaurants, :reviews, :integer, using: 'reviews::integer'
  end
end
