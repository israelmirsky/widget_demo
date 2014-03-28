class SiteController < ActionController::Base
  protect_from_forgery
  layout "site"

  def invisible_widget
  end

  def statement
    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|BB|Playbook|IEMobile|Nexus|Opera Mini|Mobile/i).match(request.user_agent)
      @mobile_device = true
    else 
      @mobile_device = false
    end
  end
end
