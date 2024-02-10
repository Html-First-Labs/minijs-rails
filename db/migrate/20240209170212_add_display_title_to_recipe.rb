class AddDisplayTitleToRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :display_title, :text
  end
end
