Rails.application.routes.draw do
  devise_for :users
  get 'persons/profile'
  root "articles#index"

  resources :articles do 
    resources :comments
  end

end
