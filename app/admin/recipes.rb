ActiveAdmin.register Recipe do
  permit_params :title, :description, :content, :tags

  index do
    selectable_column
    id_column
    column :title
    column :description
    actions
  end

  filter :email

  form do |f|
    f.inputs do
      f.input :title, as: :string
      f.input :tags, as: :string
      f.input :content
      f.input :description
    end
    f.actions
  end

end
