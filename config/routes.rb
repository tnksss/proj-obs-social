Rails.application.routes.draw do

  devise_for :users
  authenticate :user do
    root to: 'dashboard#index'
  end
end

