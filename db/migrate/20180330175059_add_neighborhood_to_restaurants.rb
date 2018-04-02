class AddNeighborhoodToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_reference :restaurants, :neighborhood, foreign_key: true
  end
end
