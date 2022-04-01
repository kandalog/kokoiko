class StaticPagesController < ApplicationController
  
  def index
    if user_signed_in?
      user = current_user
      @destinations = user.destinations
    end
  end

  def contact

  end

  def privacy
    
  end

  

end
