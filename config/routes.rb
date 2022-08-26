# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'top#index'
  get '/terms', to: 'static_pages#terms'
  get '/privacy', to: 'static_pages#privacy'
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'sign_up', to: 'users#new'
  post 'sign_up', to: 'users#create'
  get 'login', to: 'user_sessions#new'
  post 'gest_login', to: 'user_sessions#gest_login'

  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  get 'profile', to: 'profiles#edit'
  patch 'profile', to: 'profiles#update'

  resources :password_resets, only: %i[new create edit update]

  resources :insects, only: %i[index show] do
    resource :bookmarks, only: %i[create destroy]
    collection do
      get :bookmarks
    end
    resources :comments, only: %i[create destroy], shallow: true
  end

  get 'insect_questions', to: 'questions#questions'
  get 'results', to: 'questions#results'
end
