Rails.application.routes.draw do
  root to: 'posts#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :posts, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create], shallow: true
    collection do
      get :search
    end
  end

  get '/terms', to: 'static_pages#terms'
  get '/privacy', to: 'static_pages#privacy'
end
