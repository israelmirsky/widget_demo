Widgetexample::Application.routes.draw do

  devise_for :users

  resources :journalists

  match "widget" => 'site#widget'
  match "invisible_widget" => 'site#invisible_widget'
  
  root :to => 'journalists#index'

end
