Rails.application.routes.draw do

  # root route
  root to: "home#index"

  get 'vinyl_record/show'

  get 'vinyl_record/edit'

  get 'vinyl_record/update'

  get 'vinyl_record/create'

  # get ALL collectors
  get '/collectors' => 'collectors#index'

  # get ONE collector
  get '/collectors/:id' => 'collectors#show'

  # show NEW collector form
  get '/collector/new' => 'collectors#new'

  # process collector CREATE action from form
  post "/collectors" => 'collectors#create'

  # show LOGIN form
  get '/collector/login' => 'collectors#login'

  # process login form
  post '/collector/login' => 'collectors#process_login'

  resources :collectors
  resources :vinyl_records
  resources :collections
#            Prefix Verb   URI Pattern                       Controller#Action
#        collectors GET    /collectors(.:format)             collectors#index
#                   POST   /collectors(.:format)             collectors#create
#     new_collector GET    /collectors/new(.:format)         collectors#new
#    edit_collector GET    /collectors/:id/edit(.:format)    collectors#edit
#         collector GET    /collectors/:id(.:format)         collectors#show
#                   PATCH  /collectors/:id(.:format)         collectors#update
#                   PUT    /collectors/:id(.:format)         collectors#update
#                   DELETE /collectors/:id(.:format)         collectors#destroy
#     vinyl_records GET    /vinyl_records(.:format)          vinyl_records#index
#                   POST   /vinyl_records(.:format)          vinyl_records#create
#  new_vinyl_record GET    /vinyl_records/new(.:format)      vinyl_records#new
# edit_vinyl_record GET    /vinyl_records/:id/edit(.:format) vinyl_records#edit
#      vinyl_record GET    /vinyl_records/:id(.:format)      vinyl_records#show
#                   PATCH  /vinyl_records/:id(.:format)      vinyl_records#update
#                   PUT    /vinyl_records/:id(.:format)      vinyl_records#update
#                   DELETE /vinyl_records/:id(.:format)      vinyl_records#destroy
#       collections GET    /collections(.:format)            collections#index
#                   POST   /collections(.:format)            collections#create
#    new_collection GET    /collections/new(.:format)        collections#new
#   edit_collection GET    /collections/:id/edit(.:format)   collections#edit
#        collection GET    /collections/:id(.:format)        collections#show
#                   PATCH  /collections/:id(.:format)        collections#update
#                   PUT    /collections/:id(.:format)        collections#update
#                   DELETE /collections/:id(.:format)        collections#destroy
end
