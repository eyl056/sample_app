Rails.application.routes.draw do
  resources :lead_activities
  resources :leads
  resources :opportunities
  resources :contact_details
  resources :contacts
  resources :opportunity_statuses
  resources :lead_statuses
  resources :organizations
  get 'home_pages/home'
  get 'home_pages/settings'
  root 'home_pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
 