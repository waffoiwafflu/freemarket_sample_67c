Rails.application.routes.draw do
  
  root "posts#index"
  resources :items do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
  end

  get 'posts/index'
  get 'posts/show'

  
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
    get '/users/sign_out' => 'devise/sessions#destroy'
    # get '/users' => 'devise/registrations#create'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :buyers, only: [:index] do
    collection do
      post 'pay', to: 'buyers#pay'
      get 'done', to: 'buyers#done'
    end
  end
  resources :cards, only: [:new, :show, :destroy] do
    collection do
      post 'pay', to: 'cards#pay'
    end
  end
end
