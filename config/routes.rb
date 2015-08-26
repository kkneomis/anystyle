Rails.application.routes.draw do
  

  resources :sites

  get 'galleries/top'
  get 'galleries/random'
  get 'stylists/top'
  get 'stylists/random'

  resources :comments

  devise_for :users
  
  resources :users do
    resources :activities
    member do
      put "follow", to: "users#follow"
      put "unfollow", to: "users#unfollow"
      get "feed", to: "users#feed"
      get "interaction", to: "users#interaction"
    end
  end
   
  resources :styles do
    resources :comments
    member do
      put "like", to: "styles#vote"
      put "unlike", to: "styles#unvote"
    end
  end
  

  get 'pages/about'
  get 'pages/weekly'
  get 'pages/monthly'
  get 'pages/contact'
  get 'pages/show'
  get 'pages/gallery'
  get 'pages/form'
  get 'pages/contest'
  
  root 'pages#home'
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
