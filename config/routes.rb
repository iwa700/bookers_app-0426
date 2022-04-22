Rails.application.routes.draw do
  
  
  root to: 'homes#top'
  
  
  
  resources:books
  # post 'books' => 'books#create'  #ここを追記します

  
  
  # get 'books' => 'books#index'
  
  # get 'books/:id' => 'books#show', as: 'book'
  
  # get 'books/:id/edit' => 'books#edit', as: 'edit_list'
  
  
  # patch 'books/:id' => 'books#update', as: 'update_list'
  
  # delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
