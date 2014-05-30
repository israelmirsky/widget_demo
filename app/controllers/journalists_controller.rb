class JournalistsController < ApplicationController
  layout "site"
  def index
    @journalists = User.journalists
  end

  def show
    @journalist = User.find(params[:id])
  end
end