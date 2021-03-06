Rails.application.routes.draw do

  root 'tests#index'
  
  get '/feedback', to: 'static_pages#feedback'
  post '/feedback', to: 'static_pages#send_feedback'

  devise_for :users, path: :gurus, path_names: { sign_in: :login, sign_out: :logout }, controllers: { sessions: 'sessions' }

  resources :tests, only: :index do
    post :start, on: :member
  end

  resources :test_passages, only: %i[show update] do
    member do
      get :result

      resources :gists, only: :create
    end
  end

  resources :badges, only: :index

  namespace :admin do
    resources :tests do
      patch :update_inline, on: :member
      
      resources :questions, shallow: true, except: :index do
        resources :answers, shallow: true, except: :index
      end
    end

    resources :badges
    resources :gists, only: :index
  end

end
