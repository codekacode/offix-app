Rails.application.routes.draw do
  
  resources :departments
  devise_for :employees
  root 'departments#index'
end
