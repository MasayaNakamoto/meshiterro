Rails.application.routes.draw do
    # ユーザ認証機能
  devise_for :users
#   これでここがメインになる
  root to: 'homes#top'
#   resoucesで全てのルーティングができる
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
   resource :favorites, only: [:create, :destroy]
   resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end
