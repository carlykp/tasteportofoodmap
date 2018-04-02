class CreateCuisineRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :cuisine_restaurants do |t|
      t.references :cuisine, foreign_key: true
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
