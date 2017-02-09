class AddLactoveganToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :lactovegan, :string
  end
end
