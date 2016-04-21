Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  # root 'home#index' #this is same as line 11

  root 'albums#index'
  get '/albums/new' => 'albums#new'
  post '/albums' => 'albums#create', as: 'albums'
  get '/:artist' => 'albums#by_artist'

  # get "/" => "home#index"
  #we define what users ask for, and we choose where they go.
  # get "/jack" => "home#jack"
  # get "/:name" => "home#index"
  #get is a method call /:name => home#index is a hash
  # This route has a dynamic parameter.  :name was getting captured in the params hash
  # This is for reuse and not leaning on the params hash is easier to reuse.  In
  # your controller, save it as an instance variable

  # --------------Above is relevent to what we're doing ---------------

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
