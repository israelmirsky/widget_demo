Widgetexample::Application.routes.draw do

  match "widget" => 'site#widget'
  match "invisible_widget" => 'site#invisible_widget'
  
  root :to => 'site#widget'

end
