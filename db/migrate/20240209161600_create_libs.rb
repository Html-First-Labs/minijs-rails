class CreateLibs < ActiveRecord::Migration[7.0]
  def change
    create_table :libs do |t|
      t.string :name
      t.string :bundler
      t.text :instructions

      t.timestamps
    end
  end
end
