Rails.application.routes.draw do
  devise_for :users
  authenticate :user do

    root to: "dashboard#index"
    
    resources :councilmen
    resources :projects do
      get 'votes', to: "projects#votes"
      patch 'votes', to: "projects#update_votes"
    end
    
    

    resources :sessions do
      get 'presents', to: "sessions#presents"
      patch 'presents', to: "sessions#update_presents"
      get 'projects', to: "sessions#projects"
    end

    resources :project_kinds
    resources :votes

  end
end
