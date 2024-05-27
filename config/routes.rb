Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'prototypes#index'  # ここでルートパスを設定
  
  resources :prototypes do
    resources :comments,only: [:create]
  end

  resources :users
  
end
