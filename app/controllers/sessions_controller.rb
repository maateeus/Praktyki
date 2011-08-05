class SessionsController < ApplicationController
  def new
    @title="newProject"
  end
 def create
    p1 = P1.get(params[:session][:nazwa])
    if p1.nil?
      @title = "project"
      render 'new'
    else
      sign_in p1
      redirect_to p1
    end
  end
   def destroy
  end
end
