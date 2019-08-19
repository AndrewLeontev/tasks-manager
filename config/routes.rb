Rails.application.routes.draw do
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
  }

  post 'feedback', to: 'welcome#feedback'

  root 'welcome#index'
end
