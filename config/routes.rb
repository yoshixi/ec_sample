Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'products#index'
  resources :products

  resources :shops do
    member do
      get 'products'
    end

  end
  scope path: '/api', as: :api do
    scope :v1 do
      resources :products, controller: 'api/v1/products'

      resources :shops, controller: 'api/v1/shops' do
        member do
          get 'products'
        end
      end
    end
  end
end
