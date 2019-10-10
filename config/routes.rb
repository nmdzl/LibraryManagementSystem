Rails.application.routes.draw do
  resources :librarian_signup_requests
  resources :special_collection_requests
  resources :librarians
  resources :books
  resources :searches
  resources :book_histories
  get 'homes/new'
  get 'homes/show' => 'homes#show', :as => :home
  get 'homes/show_librarian' => 'homes#show_librarian'
  get 'sessions/signup' => 'sessions#signup', :as => :signup
  get 'sessions/signup_librarian' => 'sessions#signup_librarian', :as => :signup_librarian
  post 'sessions/new_student' => 'sessions#new_student'
  post 'sessions/new_librarian' => 'sessions#new_librarian'
  get 'sessions_login_librarian' => 'sessions#new_librarian'
  root :to => 'sessions#new'
  get  'login'   => 'sessions#new', :as => :loginpage
  post 'login'   => 'sessions#create'
  post 'sessions_login_librarian'   => 'sessions#create_librarian' #when click login on the login page
  delete 'logout'  => 'sessions#destroy'

  get 'books/:id/borrow' => 'books#borrow', :as => :borrow_book
  get 'book_histories/:data/index' => 'book_histories#index', :as =>:check_student_history
  get 'books/:id/status' => 'books#status', :as => :status_book
  get 'books/:id/request' => 'books#request_book', :as => :request_book
  get 'books/:id/return' => 'books#return', :as => :return_book
  get 'books/:id/cancel_request' => 'books#cancel_request', :as => :cancel_request_book

  get 'special_collection_requests/:id/approve' => 'special_collection_requests#approve', :as => :approve_special_collection_request
  get 'special_collection_requests/:id/decline' => 'special_collection_requests#decline', :as => :decline_special_collection_request

  get 'librarian_signup_requests/:id/approve' => 'librarian_signup_requests#approve', :as => :approve_librarian_signup_request
  get 'librarian_signup_requests/:id/decline' => 'librarian_signup_requests#decline', :as => :decline_librarian_signup_request

  resources :students
  resources :libraries

  get 'books_in_your_library' => 'books#books_in_your_library'
  get 'students_checkout_list' => 'book_histories#students_checkout_list'
  get 'students_overdue_list' => 'students#students_overdue_list'


  match ':controller(/:action(/:id))', :via=> :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
