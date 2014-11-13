Rails.application.routes.draw do
  get 'static_pages/home'
  # HTTP verb is a GET and the path
  # of the URL looks like "static_pages/home'
  # then route to the controller 'static pages' 
  # and the action 'home'


  get 'static_pages/about'



  resources :posts  #is equivilent to everything below:

#     posts GET    /posts => posts#index
#           POST   /posts => posts#create
#  new_post GET    /posts/1/new => posts#new
# edit_post GET    /posts/1/edit => posts#edit
#      post GET    /posts/1 => posts#show
#           PATCH  /posts/1 => posts#update
#           PUT    /posts/1 => posts#update
#           DELETE /posts/1 => posts#destroy
#      root GET    /   


  get 'static_pages/services'

  get 'static_pages/contact'

  get 'users/:id' => 'users#show'

  root to: 'posts#index'

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
