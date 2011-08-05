 
class PrezultsController < ApplicationController
  def show
    @prezult = Prezult.find(params[:id])
    
    @title = @prezult.nazwa
  end

   def create
    @prezult  = Prezult.new(params[:prezult])
    if @prezult.save
      flash[:success] = "Rezult created!"
      redirect_to @prezult
    else
      render :action => "new"
    end
  end

   def destroy
    Prezult.find(params[:id]).destroy
    flash[:success] = "Rezult destroyed."
    redirect_to root_path
  end
  
   def edit
    @prezult = Prezult.find(params[:id])
    @title = "Edit Rezult"
  end
  
  def update
    @prezult = Prezult.find(params[:id])
    if @prezult.update_attributes(params[:prezult])
      flash[:success] = "Rezult updated."
      redirect_to @prezult
    else
      @title = "Edit rezult"
      render 'edit'
    end
  end
  
  def new
  @prezult = Prezult.new(:problem_id => params[:id])
end

  
end