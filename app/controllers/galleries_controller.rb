class GalleriesController < ApplicationController
  def top
     @styles = Style.order(:total_votes => :desc ) 
  end

  def random
    @styles= Style.all
  end
end
