Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq' if ENV['SIDEKIQ_WEB_ENABLE'] == 'true'

  devise_for :users
  use_doorkeeper

  namespace :v1 do
    namespace :users, path: 'users/me' do
      resources :villages
    end

    resources :villages, only: %i[show create]

    post :signup, to: 'signup#create'

    # Users
    resources :users, only: :update do
      collection do
        get '/me', to: 'users#me'
        get :accept_callback, controller: :users
      end
    end
  end
end
