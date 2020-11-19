Rails.application.routes.draw do
  resources :books do
    collection do
      get :petition
    end
  end
  root 'users#profile'
  resources :users, only: [] do
    collection do
      get :buyed_books
      post :buy_books
      get :profile
      put '/:book_id/release', to: 'users#release', as: 'release'
      get :availables
    end
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
