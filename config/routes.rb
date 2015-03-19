Rails.application.routes.draw do
  
  resources :skills, only: [:new, :create, :destroy]

  resources :locations, only: [:new, :create, :destroy]

  root 'users#welcome'

  resources :messages, only: [:new, :create, :destroy]
  
  resource :session, only: [:new, :create, :destroy]

  resources :industries, only: [:new, :create, :destroy]

  resources :availabilities, only: [:new, :create, :destroy]

  get 'users/mentees', to: "users#mentees"
  get 'users/mentors', to: "users#mentors"

  resources :users do
    resources :filters, only: [:new, :create, :index, :show, :update]

  end

  resources :auth, only: :index

  get '/auth/callback' => "auth#show"

  get '/auth/profile', to: "auth#profile"

  get '/about', to: "users#about"

  get '/testimonials', to: "users#testimonials"

  get '/contact', to: "users#contact"

  get 'forgot', to: "users#forgot"

 # '/users/:id/filter' =>  'users#new_filter'
  #  '/users/:id/results' => 'users#show_filter'

  
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
