Rails.application.routes.draw do
  
 
  get 'posts/index'
  root "posts#index"
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # post do
  #   user
  # end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
