Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'polls#index'
  get 'polls', to: 'polls#index'
end