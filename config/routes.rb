Rails.application.routes.draw do
  resources :folios

  root 'folios#index'
end
