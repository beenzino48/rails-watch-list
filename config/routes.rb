Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :create, :new, :destroy] do
    resources :bookmarks, only: [ :new, :create, :destroy ]
  end
  resources :bookmarks, only: :destroy
  resources :movies, only: :destroy
end
