class AddCssContentToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :css_content, :text
  end
end
