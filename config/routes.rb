Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    root to: "dashboard#index"
    resources :councilmen
    resources :sessions
    resources :projects
    resources :project_kinds
    resources :session_councilmen
    resources :votes
  end
end
