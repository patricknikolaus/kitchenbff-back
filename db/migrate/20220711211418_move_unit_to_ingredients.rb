class MoveUnitToIngredients < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredients, :unit, :string
    remove_column :recipes, :unit, :integer
  end
end
