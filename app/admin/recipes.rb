ActiveAdmin.register Recipe do

  menu parent: "Core"
  permit_params :title, :description, :content, :tags, :display_title, :parent_recipe_id, :css_content, :lib_ids => [], :list_ids => []

  index do
    selectable_column
    id_column
    column :title
    column :parent_recipe
    column :tags
    column :lists
    actions
  end

  filter :email

  form do |f|

    style do 
      raw "body.logged_in.new .input .label, body.logged_in.edit .input .label, body.logged_in.create .input .label, body.logged_in.update .input .label { width: 10% !important; }"
    end

    script do 
      raw "activeTab = 'html'"
    end
    f.inputs do
      div class: "grid grid-cols-3" do 
        div class: "col-span-3" do 
          f.input :display_title, as: :string, label: "Title"

          div style: "padding-left:10%" do 
          
            div :class =>  "flex gap-x-2 pb-3" do 
              unescaped_div :class => "cursor-pointer px-3 rounded-full", :":click" => "activeTab = 'settings'", :":class" => "activeTab == 'settings' ? 'bg-gray-900 text-white' : 'hover:bg-gray-100' " do 
                "Settings"
              end 
              unescaped_div :class => "cursor-pointer px-3 rounded-full", :":click" => "activeTab = 'html'", :":class" => "activeTab == 'html' ? 'bg-gray-900 text-white' : 'hover:bg-gray-100' " do 
                "HTML"
              end 
              unescaped_div :class => "cursor-pointer px-3 rounded-full", :":click" => "activeTab = 'description'", :":class" => "activeTab == 'description' ? 'bg-gray-900 text-white' : 'hover:bg-gray-100' " do 
                "Description"
              end 
            end

          end
            
          unescaped_div :":class" => "activeTab == 'settings' ? 'block' : 'hidden' " do 
           
            f.input :parent_recipe
            f.input :title, as: :string, label: "Internal Title"
            f.input :css_content, as: :text, label: "CSS"
            f.input :tags, :as => :string
            f.input :libs, :as => :check_boxes
            f.input :lists, :as => :check_boxes
          end
          unescaped_div :":class" => "activeTab == 'html' ? 'block' : 'hidden' " do 
            f.input :content, label: "HTML", style: "height: 800px"
          end
          unescaped_div :":class" => "activeTab == 'description' ? 'block' : 'hidden' " do 
            f.input :description
          end

        end
      end
      f.actions
    end

  end

end
