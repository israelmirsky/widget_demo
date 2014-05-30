class SiteController < ActionController::Base
  protect_from_forgery
  layout "site"

  def invisible_widget
  end

  def widget
  end
end
