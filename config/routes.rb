Rails.application.routes.draw do

  resources :topics do
      resources :comments, only: [:create, :show, :destory]
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    
    get 'home/myMsg'
    root 'topics#index'
end
