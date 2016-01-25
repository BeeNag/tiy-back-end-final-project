Rails.application.routes.draw do

  get 'tips/index'

  root 'platforms#index'

  get 'platforms/:platform_id/games' => 'games#index', as: :platform_games
  # get 'platforms/:platform_id/games/:id/new' => 'games#new', as: :platform_game
  post 'platforms/:platform_id/games' => 'games#create'
  get 'platforms/:platform_id/games/new' => 'games#new', as: :new_platform_game

  get 'games/:game_id/tips' => 'tips#index', as: :game_tips

  post '/tips' => 'tips#create', as: :tips
  get 'tips/new' => 'tips#new', as: :new_tip

  resources :teams do
    resources :players
  end
    
  # resources :platforms do
  #   resources :games do
  #     resources :tips
  #   end
  # end
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
