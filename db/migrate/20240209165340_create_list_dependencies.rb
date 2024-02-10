class CreateListDependencies < ActiveRecord::Migration[7.0]
  def change
    create_table :list_dependencies do |t|
      t.integer :list_id
      t.integer :library_id

      t.timestamps
    end
  end
end
