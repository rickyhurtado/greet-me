Rails.application.routes.draw do
  get 'about-this-app', to: 'static_pages#about'

  root 'static_pages#home'
end
