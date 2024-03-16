Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "app#index"

  devise_for :users

  get "/og-image"         => "site#open_graph_image", :as => "og_image"
  get "/examples"         => "app#examples", :as => "examples"
  get "/recipes"         => "app#recipes", :as => "recipes"

  get "/add_item"            => "app#add_item", :as => "add_item"

  # Updating Stuff
  post "/lists/:list_id"     => "app#update_list", :as => "update_list"
  post "/lists/:list_id/recipes/:recipe_id" => "app#update_recipe", :as => "update_recipe"
  match "/lists/:list_id/recipes/" => "app#add_recipe", :as => "new_recipe", :via => [:get,:post]

  get "/selects" => "site#selects"
  get "/post-snippet" => "site#post_snippet"
  get "/snippets" => "site#snippets"

end