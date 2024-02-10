class CreateDependencies < ActiveRecord::Migration[7.0]
  def change
    create_table :dependencies do |t|
      t.integer :lib_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
