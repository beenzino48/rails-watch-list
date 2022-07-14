Rails.application.routes.draw do
  # root to set the base_url
  root to: 'lists#index'
  # The list needs to show an individual list, all lists, create  a list and destroy
  # bookmarks are made within lists so they need to be nested
  resources :lists, only: [:index, :show, :create, :new, :destroy] do
    resources :bookmarks, only: [ :new, :create, :destroy ]
  end
  # bookmakrs need to be able to be destroyed
  # movies are destroyed in lists so they need to be ensted
  resources :bookmarks, only: :destroy
  resources :movies, only: :destroy
end
