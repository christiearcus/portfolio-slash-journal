Rails.application.routes.draw do

root 'pages#index'
get '/about', to: 'pages#about'
get '/work', to: 'pages#work'

resources :posts do
  resources :comments
end

resources :sessions

end
