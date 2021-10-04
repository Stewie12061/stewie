Rails.application.routes.draw do
  root 'home#index'
  post '/contact', action: :contact, controller: :home, as: :contact
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
