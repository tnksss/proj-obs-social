Rails.application.routes.draw do
  devise_for :users
  authenticate :user do

    root to: "dashboard#index"
    resources :projects
    resources :councilmen
    resources :projects
    resources :sessions
    resources :session_councilmen
    resources :project_kinds    
    resources :votes
    
  end
end
