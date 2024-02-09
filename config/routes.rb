Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "app#index"

  devise_for :users

  get "/og-image"         => "site#open_graph_image", :as => "og_image"
  get "/examples"         => "app#examples", :as => "examples"
  get "/recipes"         => "app#recipes", :as => "recipes"

end
