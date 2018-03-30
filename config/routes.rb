Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :user_comments, except: [:edit,:destroy,:update]
  root :to => 'user_comments#index'
end
