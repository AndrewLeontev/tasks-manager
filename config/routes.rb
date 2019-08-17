Rails.application.routes.draw do
  devise_for :users
  post 'feedback', to: 'welcome#feedback'

  root 'welcome#index'
end
