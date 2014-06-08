class SiteController < ActionController::Base
  protect_from_forgery
  layout "site"

  def invisible_widget
  end

  def widget
  end

  def custom_design
    @id_1 = Rails.env.production? ? User.journalists[0].uncoverage_id : "538232c25679610408210000"
    @id_2 = Rails.env.production? ? User.journalists[1].uncoverage_id : "539308b15679618ca00a0000"
    @id_3 = Rails.env.production? ? User.journalists[2].uncoverage_id : "5384cb2b5679612ad8260000"
  end
end
