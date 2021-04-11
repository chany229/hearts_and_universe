Rails.application.routes.draw do
  resources :infos
  resources :keywords
  devise_for :users
  resources :dramas
  resources :events
  resources :chapters
  resources :charas

  root 'chapters#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
