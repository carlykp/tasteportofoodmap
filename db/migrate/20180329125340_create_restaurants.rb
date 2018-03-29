class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.text :food_rec
      t.text :wine_rec
      t.text :description

      t.timestamps
    end
  end
end
