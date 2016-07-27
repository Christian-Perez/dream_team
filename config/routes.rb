Rails.application.routes.draw do

  root 'visitors#index'

  devise_for :users

  resources :teams do
    resources :rosters
  end



  # get 'rosters/' => 'rosters#index'
  # get 'rosters/new' => 'rosters#new', as: :new_roster
  # post 'rosters/' => 'rosters#create'

  post '/teams/:team_id/' => 'teams#join_team', as: :join_team
  get '/teams/:id/change_owner' => 'teams#change_owner', as: :change_owner
  patch '/roster/:id' => 'rosters#update_roster', as: :update_roster
  # # get 'rosters/:id' => 'rosters#show', as: :roster
  # get 'rosters/:id/edit' => 'rosters#edit', as: :edit_roster
  # patch 'rosters/:id' => 'rosters#update'
  # delete 'rosters/' => 'rosters#destroy'
    # delete 'teams/:id' => 'teams#leave_team', as: :delete_roster

  # get 'teams/' => 'teams#index'
  # get 'teams/new' => 'teams#new', as: :new_team
  # post 'teams/' => 'teams#create'
  # get 'teams/:id' => 'teams#show', as: :team
  # get 'teams/:id/edit' => 'teams#edit', as: :edit_team
  # patch 'teams/:id' => 'teams#update'
  # delete 'teams:id' => 'teams#destroy'

  get 'users' => 'users#index'
  # get 'users/new' => 'users#new', as: :new_user
  # post 'users/' => 'users#create'
  get 'users/:id' => 'users#show', as: :user
  # get 'users/:id/edit' => 'users#edit', as: :edit_user # BREAKS EDIT LINK >> MERGE WITH EDIT-PROFILE & EDIT-USER PAGES
  # patch 'users/:id' => 'users#update'
  # delete 'users/:id' => 'users#destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
