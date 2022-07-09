Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :create, :new, :destroy] do
    resources :bookmarks, only: [ :new, :create, :destroy,]
  end
end
