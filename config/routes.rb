Ecosr::Application.routes.draw do
  root to: "static#home"

  match "ngos/:domain" => "NgOrgs#find_ngos_by_domain"
  
  resources :ng_orgs
  resources :domains

  devise_for :users

  match "verify/ngo/:registration_number" => "Verifies#show"


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  post "user/create"

  get "user/update"

  get "user/delete"

  get "user/show"

  ActiveAdmin.routes(self)

  match "/login" => "UserLogin#login"
  match "/signup" => "UserLogin#signup"
  match "/event" => "Events#create"

  match "/events/:id" => "Events#show"


  match "ng_org/create" => "NgOrgs#create"
  
  get "static/home"
  get "static/help"
  get "static/about"
  get "static/contactus"
  

  match "test/test_user" => "test#test_user"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
