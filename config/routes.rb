Rails.application.routes.draw do
  resources :genres
  resources :authors
  resources :books do
    member do
      get :toggle_availability
    end
  end
  get 'available', to: 'books#checked_in'
  get 'checked_out', to: 'books#checked_out'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
