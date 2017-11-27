Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get '/history', to: 'home#history'
  get '/log',     to: 'home#log', as: 'log'
  post '/log/rounds', to: 'rounds#create'
end
