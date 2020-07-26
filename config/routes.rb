Rails.application.routes.draw do

	get 'logout' => 'session#logout'
	get 'login' => 'session#login'
	post 'login_process' => 'session#login_process'
	get 'welcome_user' => 'session#welcome_user'
  	
  get 'account_verify' => 'session#account_verify'
  post 'account_verify' => 'session#account_verify'

  get 'validate_email' => 'users#validate_email'

  get 'password_updation' =>'session#password_updation'
  post 'password_updation' =>'session#password_updation'

  post "users/update_new_password"

  resources :users

  root 'session#login'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
