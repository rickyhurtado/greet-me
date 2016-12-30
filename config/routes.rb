Rails.application.routes.draw do
  get 'about-this-app', to: 'static_pages#about'

  namespace :about, path: '' do
    get 'about-this-app/greetings', to: 'greetings#index', as: 'greetings'
    get 'about-this-app/greetings/:greet_me', to: 'greetings#greet_me', as: 'greet_me'
  end

  root 'static_pages#home'
end
