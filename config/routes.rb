Rails.application.routes.draw do
  
  get 'posts/index'
  root "posts#index"  
  resources :items, only: [:index, :new, :create, :edit, :update, :destroy]
  devise_for :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
