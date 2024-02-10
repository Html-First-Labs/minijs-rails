ActiveAdmin.register ListDependency do


  menu parent: "Secondary"
  permit_params :list_id, :lib_id

  index do
    selectable_column
    id_column
    column :list 
    column :lib
    actions
  end


end
