Rails.application.routes.draw do
  resources :books do
    collection do
      get :petition
    end
  end
  root 'users#profile'
  resources :users, only: [] do
    collection do
      get :profile
      put '/:book_id/release', to: 'users#release', as: 'release'
    end
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
