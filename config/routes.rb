Rails.application.routes.draw do
 
 

 
  resources :courses do 
       resources :courseitems
  end
  get '/tracks', to: 'tracks#index', as: :tracks
  get '/tracks/:title', to: 'tracks#show', as: :track

  resources :templates do 
    resources :userblogs
  end
  get '/manage-stories', to: 'stories#manage', as: :manage_stories
  resources :stories
  get 'my-account', to: 'account#index', as: :account

  get 'account/show'


 devise_for :users, :skip => [:sessions]
as :user do
  get 'sign-in' => 'devise/sessions#new', :as => :new_user_session
  post 'sign-in' => 'devise/sessions#create', :as => :user_session
  delete 'sign-out' => 'devise/sessions#destroy', :as => :destroy_user_session
  get 'sign-up' => 'devise/registrations#new', :as => :new_registration
  post 'sign-up' => 'devise/registrations#create'
  get '/forgot_password' => 'devise/passwords#new', :as => :forgot_password
  post '/resend-password' => 'devise/passwords#create', as: :resend_password
end
  # This line mounts Refinery's routes at the root of your application.

  # This means, any requests to the root URL of your application will go to Refinery::PagesController#home.
  # If you would like to change where this extension is mounted, simply change the
  # configuration option `mounted_path` to something different in config/initializers/refinery/core.rb
  #
  # We ask that you don't use the :as option here, as Refinery relies on it being the default of "refinery"

 post '/contact-jeunesse', to: 'contact#create', as: :contacts
  root to: 'home#index'
  mount Refinery::Core::Engine, at: Refinery::Core.mounted_path



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
