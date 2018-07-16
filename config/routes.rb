Rails.application.routes.draw do
  devise_for :users
  
  authenticate :user do

    root to: "dashboard#index"
    
    resources :councilmen do
      get 'projects', to: "councilmen#projects"
    end

    resources :project_kinds

    resources :projects do
      get 'votes', to: "projects#votes"
      patch 'votes', to: "projects#update_votes"
    end    

    resources :meetings do
      get 'presents', to: "meetings#presents"
      patch 'presents', to: "meetings#update_presents"
      get 'projects', to: "meetings#projects"
      
    end    

  end
end
