Rails.application.routes.draw do
  resources :restaurants do
    collection do # We don't need an id, so it's for the collection
      get 'top'
    end

    member do # We need an id, so it's for a member of the collection
      get 'chef'
    end

    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:show, :edit]

  namespace :admin do
    resources :restaurants, only: :index
  end

  # get 'restaurants/top', to: 'restaurants#top'

  root to: 'restaurants#index'
end
