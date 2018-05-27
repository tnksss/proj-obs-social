Rails.application.routes.draw do
  resources :project_kinds
  devise_for :users
  authenticate :user do
    root to: "dashboard#index"
    resources :councilmen
    resources :sessions
  end
end
