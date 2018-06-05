Rails.application.routes.draw do
  devise_for :users
  authenticate :user do

    root to: "dashboard#index"
    resources :projects

    resources :councilmen do
      resources :projects
    end
    resources :session_councilmen
    resources :sessions do
      resources :session_councilmen
      resources :projects do
      end
    end
    resources :project_kinds    
    resources :votes, except: [:edit, :delete, :update]
    
  end
end
