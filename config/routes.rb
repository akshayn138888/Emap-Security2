Rails.application.routes.draw do
  
  
  devise_for :guards, path: "guards", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :widgets

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
root 'prithi#index'

get'/prithi' => "prithi#index"
get '/prithi/index' => "prithi#index"
get '/prithi/about_us' => "prithi#about_us"
get '/prithi/contact_us' => "prithi#contact_us"
#here comes the new pages
get '/sign_up' => "sign_up#index" # index page
get '/supervisors/new' => "supervisors#new"
resources :supervisors


get '/sign_upps'=> "sign_upps#new" 
get '/sign_upps/new'=> "sign_upps#new" 
get '/sign_upps/index' => "sign_upps#index"
resources :sign_upps
resources :admins

get '/sign_upp_supervisors'=> "sign_upp_supervisors#new" 
get '/sign_upp_supervisors/new'=> "sign_upp_supervisors#new" 
get '/sign_upp_supervisors/index'=> "sign_upp_supervisors#index" 
resources :sign_upp_supervisors

get '/sign_upp_security_guard'=> "sign_upp_security_guard#new" 
get '/sign_upp_security_guard/new'=> "sign_upp_security_guard#new" 
get '/sign_upp_security_guard/index'=> "sign_upp_security_guard#index" 
resources :sign_upp_security_guards



get 'admin/signup' => "admins#new"
get 'guard/signup' => "guards#new"
get 'supervisor/signup' => "supervisors#new"


#here ends the new pages
match ':controller(/:action(/:id))', :via => :get
match ':controller(/:action(/:id))', :via => :post

get '/login' => 'session_admnins#new'
post 'login' => 'session_admnins#create'
delete 'logout' => 'session_admnins#destroy'

get '/login_supervisor' => 'session_supervisors#new'
post 'login_supervisor' => 'session_supervisors#create'
  
delete 'logout' => 'session_supervisors#destroy'

get '/login_security_guard' => 'session_security_guards#new'
post 'login_security_guard' => 'session_security_guards#create'

delete 'logout' => 'session_security_guards#destroy'


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
