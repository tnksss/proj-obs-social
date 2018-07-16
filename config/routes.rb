Rails.application.routes.draw do
  devise_scope :users do #notice "users" here, not "user"
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end

  devise_for :users, :skip => [:registrations]
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end
 


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
