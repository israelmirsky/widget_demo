Widgetexample::Application.routes.draw do

  devise_for :users

  resources :journalists

  match "custom_design" => "site#custom_design"
  match "invisible_widget" => 'site#invisible_widget'
  
  root :to => 'journalists#index'

end
