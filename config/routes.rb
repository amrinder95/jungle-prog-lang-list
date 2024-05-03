Rails.application.routes.draw do
  root 'programming_languages#index'
  resources :programming_languages
  
  get 'programming_languages/index'
  get 'programming_languages/show'
  get 'programming_languages/new'
  get 'programming_languages/create'
  get 'programming_languages/edit'
  get 'programming_languages/update'
  get 'programming_languages/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
