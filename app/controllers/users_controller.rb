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
    @activities = Activity.where(actor_id: @user.id)

  end


 
  def follow
    current_user.follow(@user)
    redirect_to @user
    activity= Activity.create(params[:activity])
    activity.actor_id = current_user.id
    activity.action = " followed "
    activity.receiver_id= @user.id
    activity.action_type= "follow"
    activity.save
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
