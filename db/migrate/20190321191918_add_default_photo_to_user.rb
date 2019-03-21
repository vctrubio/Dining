class AddDefaultPhotoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :photo, :string, :default => "https://res.cloudinary.com/dmeg8bow6/image/upload/v1542791113/02th-egg-person.jpg"
  end
end
