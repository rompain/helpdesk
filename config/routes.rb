Helpdesk::Engine.routes.draw do

  root :to => "dashboard#index"
  resources :tickets, :except => [ :destroy ]

  # Admin only roots
  namespace :admin do
    resources :tickets
    root :to => "dashboard#index"
  end
end
