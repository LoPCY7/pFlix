class HomeController < ApplicationController
  def index
    if user_signed_in?
      if current_user.subscribed != true
        redirect_to subscribe_index_path
      else
        redirect_to movies_path
      end
    end
  end
end
