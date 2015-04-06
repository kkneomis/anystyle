class PagesController < ApplicationController
  def home
    @name="Home"
    if user_signed_in?
      @name = "My Style Feed"
      redirect_to feed_user_path(current_user)
    end
  end

  def about
  end

  def contact
  end

  def gallery
  end

  def show
  end

  def gallery
  end

  def form
  end

  def contest
  end
end
