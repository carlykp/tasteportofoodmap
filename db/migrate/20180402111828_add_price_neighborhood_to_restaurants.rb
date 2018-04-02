class AddPriceNeighborhoodToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :price, :string
    add_column :restaurants, :neighborhood, :string
  end
end
