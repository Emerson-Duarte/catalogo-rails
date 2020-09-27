Rails.application.routes.draw do

  get 'books/statics'
  resources :books
  resources :genres


  root 'home#index'
end
