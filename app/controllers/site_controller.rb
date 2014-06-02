class SiteController < ActionController::Base
  protect_from_forgery
  layout "site"

  def invisible_widget
  end

  def widget
  end

  def custom_design
    @journalist = User.journalists[1]
  end
end
