Rails.application.routes.draw do
    resources :users
    resources :allfoods
    resources :ingredients
    resources :hotels
    resources :schedules
    root 'users#index'
end
