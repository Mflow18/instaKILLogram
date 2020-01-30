Rails.application.routes.draw do
  devise_for :users
  resources :photos do
    member do
      put "Like", to: "photos#upvote"
    end
  end
  root "photos#index"
end
