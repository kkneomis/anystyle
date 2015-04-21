class GalleriesController < ApplicationController
  def top
     @styles = Style.paginate(:page => params[:page], :per_page => 12).order('created_at DESC')
  end

  def random
    @styles = Style.random.paginate(:page => params[:page], :per_page => 12)
  end
end
