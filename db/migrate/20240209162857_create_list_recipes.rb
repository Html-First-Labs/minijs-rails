class CreateListRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :list_recipes do |t|
      t.integer :list_id
      t.integer :recipe_id
      t.integer :order

      t.timestamps
    end
  end
end
