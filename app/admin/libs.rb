ActiveAdmin.register Lib do

  menu parent: "Core"
  permit_params :name, :bundler, :instructions, :cdn_script_url

  index do
    selectable_column
    id_column
    column :name
    column :bundler
    actions
  end

  filter :email

  form do |f|
    f.inputs do
      f.input :name, as: :string
      f.input :bundler, as: :select, collection: Lib::BUNDLERS.map { |key,hash| [ hash[:name], hash[:identifier] ] }
      f.input :instructions
      f.input :cdn_script_url, as: :string
    end
    f.actions
  end

end
