class AboutController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if (!current_user)
      flash.now.notice = "You are not #{view_context.link_to "Log in", new_user_session_path}.".html_safe
    end
  end
end
