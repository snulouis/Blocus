Rails.application.routes.draw do
  get 'home/mypage' => "home#mypage"
  get 'home/list' => "home#list"

  resources :comments
  resources :events
  resources :infos
  root 'regions#index'

  get '/regions/:region_id/index' => "regions#index"
  get '/mypage' => "home#mypage"

  post '/damn' => "regions#myajax"
  post 'regions/nevy'

  post '/regions/replypost'

  resources :regions
  resources :bloks
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
