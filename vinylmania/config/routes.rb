Rails.application.routes.draw do
  resources :vinylmanias
  resources :collections
  resources :records

end

#   Prefix Verb   URI Pattern                     Controller#Action
#     vinylmanias GET    /vinylmanias(.:format)          vinylmanias#index
#                 POST   /vinylmanias(.:format)          vinylmanias#create
#  new_vinylmania GET    /vinylmanias/new(.:format)      vinylmanias#new
# edit_vinylmania GET    /vinylmanias/:id/edit(.:format) vinylmanias#edit
#      vinylmania GET    /vinylmanias/:id(.:format)      vinylmanias#show
#                 PATCH  /vinylmanias/:id(.:format)      vinylmanias#update
#                 PUT    /vinylmanias/:id(.:format)      vinylmanias#update
#                 DELETE /vinylmanias/:id(.:format)      vinylmanias#destroy



#     collections GET    /collections(.:format)          collections#index
#                 POST   /collections(.:format)          collections#create
#  new_collection GET    /collections/new(.:format)      collections#new
# edit_collection GET    /collections/:id/edit(.:format) collections#edit
#      collection GET    /collections/:id(.:format)      collections#show
#                 PATCH  /collections/:id(.:format)      collections#update
#                 PUT    /collections/:id(.:format)      collections#update
#                 DELETE /collections/:id(.:format)      collections#destroy


    #     records GET    /records(.:format)              records#index
    #             POST   /records(.:format)              records#create
    #  new_record GET    /records/new(.:format)          records#new
    # edit_record GET    /records/:id/edit(.:format)     records#edit
    #      record GET    /records/:id(.:format)          records#show
    #             PATCH  /records/:id(.:format)          records#update
    #             PUT    /records/:id(.:format)          records#update
    #             DELETE /records/:id(.:format)          records#destroy

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

