class AddStuffToSandwichIngredients < ActiveRecord::Migration[5.0]
  def change
    add_column :sandwich_ingredients, :ingredient_id, :integer
    add_column :sandwich_ingredients, :sandwich_id, :integer
  end
end
