class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard_handyman
    @handyman = current_user.handymen[0]
  end

  def dashboard_user
    @user = current_user
    @pending_quotations = @user.quotations
  end
end
