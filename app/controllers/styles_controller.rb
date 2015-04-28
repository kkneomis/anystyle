class StylesController < ApplicationController
  before_action :set_style, only: [:show, :edit, :update, :destroy, :vote, :unvote]
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :vote]
  before_filter :check_user, only: [:edit, :update, :destroy]
  # GET /styles
  # GET /styles.json
  def index
    @styles = Style.paginate(:page => params[:page], :per_page => 12).order('created_at DESC')
  end

  # GET /styles/1
  # GET /styles/1.json
  def show
  end
  
  def vote
    @style.liked_by current_user
    @style.total_votes =@style.votes_for.size
    redirect_to @style
    activity= Activity.create(params[:activity])
    activity.actor_id = current_user.id
    activity.action = " liked a post from "
    activity.object_id= @style.id
    activity.receiver_id= @style.user.id
    activity.action_type="like"
    activity.save
  end
  
  def unvote
    @style.unliked_by current_user
    @style.total_votes=@style.votes_for.size
    redirect_to @style
  end

  # GET /styles/new
  def new
    @style = Style.new
  end

  # GET /styles/1/edit
  def edit
  end

  # POST /styles
  # POST /styles.json
  def create
    @style = Style.new(style_params)
    @style.user_id= current_user.id
    @style.total_votes= 0
    respond_to do |format|
      if @style.save 
        #format.html { redirect_to @style, notice: 'Style was successfully created.' }
        #format.json { render :show, status: :created, location: @style }
          format.html { render :action => 'crop' }
      else
        format.html { render :new }
        format.json { render json: @style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /styles/1
  # PATCH/PUT /styles/1.json
  def update
    respond_to do |format|
   
      if @style.update(style_params)
        format.html { redirect_to @style, notice: 'Style was successfully updated.' }
        format.json { render :show, status: :ok, location: @style }
      elsif @style.update(style_params)
         format.html { render :action => 'crop' }
      else
        format.html { render :edit }
        format.json { render json: @style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /styles/1
  # DELETE /styles/1.json
  def destroy
    @style.destroy
    respond_to do |format|
      format.html { redirect_to styles_url, notice: 'Style was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_style
      @style = Style.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def style_params
      params.require(:style).permit(:name, :description, :image1, :image2, :image3, :image4, :poster_id, :stylist_id, :crop_x, :crop_y, :crop_h, :crop_w, :total_votes, :phone, :stylist_name)
    end
  
   def check_user
     if current_user != @style.user
       redirect_to root_url, alert: "Sorry, this Style belongs to someone else"\
      end
  end

end
