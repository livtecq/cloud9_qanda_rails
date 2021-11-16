Rails.application.routes.draw do
  get 'answers/edit'
  # get 'questions/index'
  # get 'questions/show'
  # get 'questions/new'
  # get 'questions/edit'
  
  # rootの設定
  root 'questions#index'
  # resourcesを使用したルーティングの設定
  resources :questions do
    # do 以下 Answers ルーティングの設定
    resources :answers
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
