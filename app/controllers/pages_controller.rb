class PagesController < ApplicationController
   def show
    @p1s = P1.find(params[:id])
  end
  
  
  def home
    @title="Home"
  end

end
