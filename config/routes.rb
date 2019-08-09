Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :v1 do
    resources :playlists, :likes, :dislikes, :listings
    resource :sessions, only: [:create, :destroy]
  end

end
