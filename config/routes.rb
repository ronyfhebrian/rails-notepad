Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :notes

  authenticated do
    root 'notes#index', as: "authenticated_user"
  end

  root 'welcome#index'
end
