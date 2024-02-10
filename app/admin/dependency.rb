ActiveAdmin.register Dependency do
  permit_params :lib_id, :recipe_id, :order

  menu parent: "Secondary"

  index do
    selectable_column
    id_column
    column :lib
    column :recipe 
    column :order
    actions
  end


end
