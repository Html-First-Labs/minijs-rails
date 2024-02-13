class AddCdnScriptUrlToLibs < ActiveRecord::Migration[7.0]
  def change
    add_column :libs, :cdn_script_url, :text
  end
end
