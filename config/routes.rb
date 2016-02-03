Rails.application.routes.draw do
  root 'pages#home'
  
  devise_for :users
  
  resources :businesses, :payment_terms, except: [:index]
  resources :invoicing_line_items, except: [:index, :show, :edit, :new]
  resources :services, :enrollments, :bills
  
  resources :clients do
    member do
      get :confirm_email
    end
  end
  
  post 'enroll' => 'enrollments#add_enrollment'
  get 'enroll' => 'enrollments#add_enrollment'
  
  resources :jobs, except: [:show] do
    put :sort, on: :collection
  end
  get "itinerary" => "jobs#itinerary"
  
#   resources :bills do
#     member do
#       get 'create_pdf' => "bills#create_pdf"
#     end
#   end
  
#  get "bill_pdf" => "bills#create_pdf"
#  get "bill_html" => "bills#render_html" #Don't want to use this in the app because it's ugly.

  # Main Menu
  get "mybusiness" => "pages#mybusiness"
  get "myclients" => "pages#myclients"
  get "myschedule" => "pages#myschedule"
  get "advertising" => "pages#advertising"
  get "reports" => "pages#reports"
  
  get 'resend_confirmation' => 'pages#resend_confirmation'
  get 'resend_client_confirmation' => 'clients#resend_client_confirmation'

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
