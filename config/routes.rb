# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "top#index"
  get "/sign_up", to: "users#new"
  post "/sign_up", to: "users#create"
end
