Rails.application.routes.draw do
  devise_for :users
  use_doorkeeper

  namespace :v1 do
    namespace :users, path: 'users/me' do
      resources :villages
    end

    post :signup, to: 'signup#create'

    # Users
    resources :users, only: :update do
      collection do
        get '/me', to: 'users#me'
      end
    end
  end
end
