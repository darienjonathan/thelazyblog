Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :blogs, only: [:index] do
    resources :comments
  end
  get 'blogs/:permalink', to: 'blogs#show', constraints: { permalink: /[\d\w\_\-\.]+/ }, as: :blog

  root to: "blogs#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
