class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard_handyman
    raise
    @handyman = current_user
  end

  def dashboard_user
    @user = current_user
  end
end
