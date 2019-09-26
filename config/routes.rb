Rails.application.routes.draw do
  get 'pregnancy/top'
  get 'infertility/top'
  get 'abouts/top'
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


root 'abouts#top'
get 'infertility/top' => 'infertility#top', as:"infer_top" 
get 'pregnancy/top' => 'pregnancy#top',as:"preg_top" 


resources :admins, only:[:show, :edit, :update] 

# 名前空間上のroute
namespace :admin do
  resources :users ,only: [:show, :index, :destroy]
  resources :hosps, only: [:index, :show, :destroy] 
  resources :hosp_reviews, only: [:index, :destroy]
  resources :searchs, only: [:index]
  get 'recommends/infertility' => 'recommends#index', as:"infer_index"
  get 'recommends/pregnancy' => 'recommends#list', as:"preg_list"
  get 'recommends/human' => 'recommends#summary', as:"human_summary"

  resources :recommends, only: [:show, :destroy] 
  resources :regrets, only: [:index, :create, :destroy]
end

namespace :user do
  resources :users,only: [:show, :edit, :update, :destroy]
  resources :hosps do
    resources :hosp_reviews, only: [:create, :edit, :update, :destroy]
    resource :hosp_likes, only: [:create, :destroy]
  end
  get 'recommends/infertility/new' => 'recommends#new', as:"infer_new" 
  post 'recommends/infertility' => 'recommends#create', as:"infer_create"
  get 'recommends/infertility' => 'recommends#index', as:"infer_index"

  get 'recommends/pregnancy/latest' => 'recommends#latest', as:"preg_latest"
  post 'recommends/pregnancy' => 'recommends#complet', as:"preg_comp"
  get 'recommends/pregnancy' => 'recommends#list', as:"preg_list"

    resources :recommends, only: [:show, :edit, :update, :destroy] do
      resource :recommend_likes, only: [:create, :destroy]
    end
  resources :recommend_likes, only:[:index]
  resources :regrets, only: [:index, :create, :destroy]
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
