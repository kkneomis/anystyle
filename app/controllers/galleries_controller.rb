class GalleriesController < ApplicationController
  def top
    
    

    @styles = Style.order(:total_votes => :desc ).take(20)
  end

  def random
    @styles= Style.order("RANDOM()").take(20)
  end
end
