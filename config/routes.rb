Rails.application.routes.draw do
  # Add your extension routes here
  namespace :admin do
    resources :option_groups
  end
end
