Rails.application.routes.draw do
  resources :koko_test_ajas
  resources :questions
  resources :users
  resources :badges
  resources :questionsets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
