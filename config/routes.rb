Rails.application.routes.draw do
  resources :searches
  resources :book_histories
  get 'homes/new'
  get 'homes/show' => 'homes#show', as: :home
  get 'sessions/signup' => 'sessions#signup', :as => :signup
  post 'sessions/new_user' => 'sessions#new_user'
  root :to => 'sessions#new'
  get    'login'   => 'sessions#new', :as => :loginpage
  post   'login'   => 'sessions#create'
      delete 'logout'  => 'sessions#destroy'

  get 'books/:id/borrow' => 'books#borrow', :as => :borrow_book
  get 'book_histories/:data/index' => 'book_histories#index', :as =>:check_user_history
  get 'books/:id/request' => 'books#request_book', :as => :request_book
  get 'books/:id/return' => 'books#return', :as => :return_book
  get 'books/:id/cancel_request' => 'books#cancel_request', :as => :cancel_request_book
  resources :students
  resources :libraries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
