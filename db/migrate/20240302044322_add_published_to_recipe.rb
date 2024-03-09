class AddPublishedToRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :published, :boolean
  end
end
