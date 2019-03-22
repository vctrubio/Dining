class NewDefaultPictureToRestaurant < ActiveRecord::Migration[5.2]
  def change
     change_column :restaurants, :photo, :string, :default => "https://res.cloudinary.com/vvrruubb69e/image/upload/v1553290806/photo-1521017432531-fbd92d768814.jpg"
  end
end
