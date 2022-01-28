Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

	root 'top#index'

	resources :list, only: %i(new create edit update destroy)
  # Defines the root path route ("/")
  # root "articles#index"
	devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
