class CreateSnippets < ActiveRecord::Migration[7.0]
  def change
    create_table :snippets do |t|
      t.text :content
      t.text :external_id

      t.timestamps
    end
  end
end
