class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.text :title
      t.text :description
      t.text :content
      t.text :tags

      t.timestamps
    end
  end
end
