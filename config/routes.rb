Rails.application.routes.draw do
  get 'home/update_books', as: 'update_books'
    get 'home/show'
    root 'home#index'
end
