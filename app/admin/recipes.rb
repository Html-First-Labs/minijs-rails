ActiveAdmin.register Recipe do

  menu parent: "Core"
  permit_params :title, :description, :content, :tags, :display_title, :css_content, :lib_ids => [], :list_ids => []

  index do
    selectable_column
    id_column
    column :title
    column :description
    actions
  end

  filter :email

  form do |f|

    script do 
      raw "activeTab = 'html'"
    end
    f.inputs do
      div class: "grid grid-cols-5" do 
        div class: "col-span-3" do 
          f.input :display_title, as: :string, label: "Title"

          div style: "padding-left:25%" do 
          
            div :class =>  "flex" do 
              unescaped_div :class => "cursor-pointer", :":click" => "activeTab = 'html'" do 
                "HTML"
              end 
              unescaped_div :class => "cursor-pointer", :":click" => "activeTab = 'css'" do 
                "CSS"
              end 
            end

          end
            
          unescaped_div :":class" => "activeTab == 'html' ? 'block' : 'hidden' " do 
            f.input :content, label: "HTML"
          end
          unescaped_div :":class" => "activeTab == 'css' ? 'block' : 'hidden' " do 
            f.input :css_content
          end

        end
        div class: "col-span-2" do 
          f.input :title, as: :string, label: "Internal Title"
          f.input :tags, :as => :string
          f.input :libs, :as => :check_boxes
          f.input :lists, :as => :check_boxes
          f.input :description
        end
      end
      f.actions
    end

  end

end
