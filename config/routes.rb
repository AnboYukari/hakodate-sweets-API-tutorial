Rails.application.routes.draw do

  resources :shops do
    resources :sweets, only: %i[index create]
  end

  resources :categories

  resources :sweets, except: :create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
