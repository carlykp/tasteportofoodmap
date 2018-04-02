class RemoveNeighborhoodFromRestaurants < ActiveRecord::Migration[5.1]
  def change
    remove_reference :restaurants, :neighborhood, foreign_key: true
  end
end
