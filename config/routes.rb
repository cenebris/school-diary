Rails.application.routes.draw do

  root 'students#index'

  devise_for :users

  resources :students do
    get :subjects
  end

  resources :teachers do
    get :subjects
  end
  resources :report_subjects

  get 'reports', to: 'reports#subjects'
end
