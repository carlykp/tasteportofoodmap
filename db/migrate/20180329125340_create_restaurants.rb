class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :food_rec
      t.string :wine_rec
      t.string :description

      t.timestamps
    end
  end
end
