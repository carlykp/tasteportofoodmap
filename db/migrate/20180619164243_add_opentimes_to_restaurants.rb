class AddOpentimesToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :sunday, :string
    add_column :restaurants, :monday, :string
    add_column :restaurants, :tuesday, :string
    add_column :restaurants, :wednesday, :string
    add_column :restaurants, :thursday, :string
    add_column :restaurants, :friday, :string
    add_column :restaurants, :saturday, :string
  end
end
