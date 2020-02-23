class AboutController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    flash.notice = "flash.notice"
    flash.alert = 'flash.alert'
  end
end
