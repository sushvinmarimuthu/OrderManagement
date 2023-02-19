Rails.application.routes.draw do
  devise_for :shops, path: 'shops', controllers: {
    sessions: 'shops/sessions',
    registrations: 'shops/registrations'
  }
  devise_scope :shops do
    authenticated  do
      root to: 'dashboard#index', as: 'authenticated_shop_root'
    end

    # unauthenticated do
    #   root to: 'shared#home', as: 'unauthenticated_patient_root'
    # end
  end
  # eg. http://localhost:3000/shops/sign_in
  devise_for :customers, path: 'customers', controllers: {
    sessions: 'customers/sessions',
    registrations: 'customers/registrations'
  }
  devise_scope :customers do
    authenticated  do
      root to: 'dashboard#index', as: 'authenticated_customer_root'
    end
  end
  # eg. http://localhost:3000/customers/sign_in

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"
end
