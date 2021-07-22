Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks'}
    devise_scope :user do 
      get 'login', to: 'devise/sessions#new'
    end
    devise_scope :user do 
      get 'signup', to: 'devise/registrations#new'
    end

  get 'persons/profile'
  root "articles#index"

  resources :articles do 
    resources :comments
  end

end
