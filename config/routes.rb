Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home', as: :home
  get '/portfolio' => 'pages#portfolio', as: :portfolio
  get '/about' => 'pages#about', as: :about

end
