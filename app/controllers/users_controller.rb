class UsersController < ApplicationController
  before_action :set_user, only: [:follow, :unfollow, :feed]
   before_filter :authenticate_user!, only: [:follow, :unfollow]
  def show
     @user = User.find(params[:id])

    respond_to do |format|
        format.html # show.html.erb
        format.xml { render :xml => @user }
    end
  end
  
  def feed

    @followings= @user.all_following
    @allstyles=@user.styles
    if @followings.empty?
    else

        @followings.each do |user|
            @allstyles.append(user.styles)
      end
      
      @feedstyles= @allstyles.order('created_at DESC')  
    end
  end


 
  def follow
    current_user.follow(@user)
    redirect_to @user
  end
  
  def unfollow
    current_user.stop_following(@user)
    redirect_to @user
  end
  
 private
    # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
    end
end
