Rails.application.routes.draw do
  root 'static#index'

  resources :movies, :books, :albums
  # Is post correct for upvoting or should it be patch? 
  post '/movies/:id/upvote', to: 'movies#upvote', as: :upvote_movie
  post '/books/:id/upvote', to: 'books#upvote', as: :upvote_book
  post '/albums/:id/upvote', to: 'albums#upvote', as: :upvote_album

#  get '/movies/index', to: 'movies#index'
#  get '/movies/show/:id', to: 'movies#show', as: :show_movie
#  get '/movies/new', to: 'movies#new', as: :new_movie  
#  post '/movies/create', to: 'movies#create', as: :movies
#  get '/movies/:id/edit', to: 'movies#edit', as: :edit_movie
#  patch '/movies/:id/edit', to: 'movies#update', as: :update_movie
#  get '/movies/:id/destroy', to: 'movies#destroy', as: :destroy_movie

#  get '/books/index', to: 'books#index'
#  get '/books/show/:id', to: 'books#show', as: :show_book
#  get '/books/new', to: 'books#new', as: :new_book
#  post '/books/create', to: 'books#create', as: :books
#  get '/books/:id/edit', to: 'books#edit', as: :edit_book
#  patch '/books/:id/edit', to: 'books#update', as: :update_book
#  get '/books/:id/destroy', to: 'books#destroy', as: :destroy_book
  
#  get '/albums/index', to: 'albums#index'
#  get '/albums/show/:id', to: 'albums#show', as: :show_album
#  get '/albums/new', to: 'albums#new', as: :new_album
#  post '/albums/create', to: 'albums#create', as: :albums
#  get '/albums/:id/edit', to: 'albums#edit', as: :edit_album
#  patch '/albums/:id/edit', to: 'albums#update', as: :update_album
#  get '/albums/:id/destroy', to: 'albums#destroy', as: :destroy_album



  
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
