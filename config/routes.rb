Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#welcome', as: :welcome
  get '/portfolio' => 'pages#portfolio', as: :portfolio

end
