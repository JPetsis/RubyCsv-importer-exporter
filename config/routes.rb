Rails.application.routes.draw do
  resources :products do
    collection { post :import }
  end
  get 'simple_pages/index'
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
