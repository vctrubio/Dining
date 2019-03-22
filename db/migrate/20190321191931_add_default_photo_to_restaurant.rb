class AddDefaultPhotoToRestaurant < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :photo, :string,   :default => "https://res.cloudinary.com/vvrruubb69e/image/upload/v1553192478/Screenshot_2019-03-21_at_12.21.10.png"
  end
end
