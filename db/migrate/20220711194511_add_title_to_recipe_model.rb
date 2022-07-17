class AddTitleToRecipeModel < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :title, :string
    add_column :recipes, :prep_time, :integer
    add_column :recipes, :cook_time, :integer
    add_column :recipes, :description, :text
    add_column :recipes, :unit, :integer

    remove_column :recipes, :chef, :string
    remove_column :recipes, :name, :string
    remove_column :recipes, :user_id, :integer
    
  end
end
