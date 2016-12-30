Rails.application.routes.draw do
  get 'about-this-app', to: 'static_pages#about'
  get 'about-this-app/greetings/:greet_me', to: 'greetings#morning', as: 'morning_greetings'

  root 'static_pages#home'
end
