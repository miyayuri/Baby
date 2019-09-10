Rails.application.routes.draw do
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}

# 名前空間上のroute
namespace :admin do
  resources :users
end

namespace :user do
  resources :users,only: [:show, :edit, :update, :destroy]
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
