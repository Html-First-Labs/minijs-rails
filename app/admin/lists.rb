ActiveAdmin.register List do

  menu parent: "Core"
  
  permit_params :name, :description, :list_recipes_attributes => [:id,:recipe_id,:order]

  index do
    selectable_column
    id_column
    column :name
    actions
  end

  filter :email

  form do |f|
    f.inputs do
      f.input :name, as: :string
      f.input :description
    end
    f.has_many :list_recipes do |lr|
      lr.input :order
      lr.input :recipe_id, as: :select, :collection => Recipe.all
    end
    f.actions
  end

end
