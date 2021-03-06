Rails.application.routes.draw do
  devise_for :users
  root 'home#board'
  get '/register_test' => "home#register_test"
  get '/register' => "home#register"
  post '/save_book' => "home#save_book"
  get '/search' => "home#searchbook"
  get '/board' => "home#board"
  get '/board/:page_id' => "home#board"
  get '/report' => "home#report"
  get '/buy/:book_id' => "home#buy"
  get '/buy_now/:book_id' => "home#buy_now"
  post '/nego/:book_id' => "home#nego"
  
  get '/:nothing/board' => "home#user_board"
  get '/:nothing/register' => "home#user_register"
  get '/:nothing/search' => "home#user_search"
  get '/:nothing/report' => "home#user_report"
  get '/buy_test/:book_id' => "home#buy_test"
  
  
  #get 'index.html' => "home#index"
  #get 'home/basic_table'

  #get 'home/buttons'

  #get 'home/form_component'

  #get 'home/gallery'

  #get 'home/login'

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
