class SiteController < ActionController::Base
  protect_from_forgery
  layout "site"

  def invisible_widget
  end

  def widget
  end

  def custom_design
    journalist_ids = if Rails.env.production?
      User.journalists.limit(3).map(&:uncoverage_id)
    else
      ["538232c25679610408210000", "539308b15679618ca00a0000", "5384cb2b5679612ad8260000"]
    end
  end
end
