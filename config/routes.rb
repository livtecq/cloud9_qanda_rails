Rails.application.routes.draw do
  # get 'questions/index'
  # get 'questions/show'
  # get 'questions/new'
  # get 'questions/edit'
  
  # rootの設定
  root 'questions#index'
  # resourcesを使用したルーティングの設定
  resources :puestions
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
