class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.text :reviews
      t.integer :capacity
      t.integer :open_hour
      t.integer :close_hour
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
