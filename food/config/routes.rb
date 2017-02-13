Rails.application.routes.draw do
    resources :users
    resources :allfoods
    resources :ingredients
    resources :hotels
    resources :schedules
    get "autogen" => 'schedules#generate_weekly_schedule'
    root 'users#index'
end
