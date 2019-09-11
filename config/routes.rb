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
  resources :hosps do
    resources :hosp_reviews, only: [:create, :edit, :update, :destroy]
    resources :hosp_likes, only: [:create, :destroy, :index]
  end
  get 'recommends/infertility/new' => 'recommends#new', as:"infer_new" 
  post 'recommends/infertility' => 'recommends#create', as:"infer_create"
  get 'recommends/infertility' => 'recommends#index', as:"infer_index"
  get 'recommends/infertility/:id' => 'recommend#show', as:"infer_show"
  get 'recommends/pregnancy/latest' => 'recommends#latest', as:"preg_latest"
  post 'recommends/pregnancy' => 'recommends#complet', as:"preg_comp"
  get 'recommends/pregnancy' => 'recommends#list', as:"preg_list"
  get 'recommends/pregnancy:/id/' => 'recommend#details', as:"preg_deta"
    resources :recommends, only: [:edit, :update, :destroy] do
      resource :recommend_likes, only: [:create, :destroy]
    end
  resources :regrets, only: [:index, :create, :destroy]

end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
