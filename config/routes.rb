Rails.application.routes.draw do
  scope :shop_dashboard do
    resources :products
  end
  devise_for :shops, path: 'shops', controllers: {
    sessions: 'shops/sessions',
    registrations: 'shops/registrations'
  }
  devise_for :customers, path: 'customers', controllers: {
    sessions: 'customers/sessions',
    registrations: 'customers/registrations'
  }

  root "landing#index"
  get '/customer_dashboard' => "customer_dashboard#index", :as => :customer_dashboard
  get '/shop_dashboard' => "shop_dashboard#index", :as => :shop_dashboard
end
