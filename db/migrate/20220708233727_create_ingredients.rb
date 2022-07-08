class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id
      t.string :name
      t.string :measurement

      t.timestamps
    end
  end
end
