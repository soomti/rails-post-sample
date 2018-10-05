Rails.application.routes.draw do
  root 'posts#index'
  get 'posts' => 'posts#index'
  get 'posts/new' => 'posts#new'
  get 'posts/:id/edit' => 'posts#edit'
  get 'posts/:id' => 'posts#show'

  post 'posts' => 'posts#create'
  post 'posts/:id' => 'posts#update'
  get 'posts/:id/destroy' => 'posts#destroy'
end
