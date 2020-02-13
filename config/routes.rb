Rails.application.routes.draw do
  resources :employees do
    resources 
    get 'operations/index'
    get 'operations/show'
    post 'operations/create'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
