class RezultsController < ApplicationController
  def show
    @rezult = Rezult.find(params[:id])
    
    @title = @rezult.nazwa
  end

   def create
    @rezult  = Rezult.new(params[:rezult])
    if @rezult.save
      flash[:success] = "Rezult created!"
      redirect_to @rezult
    else
      render :action => "new"
    end
  end

   def destroy
    Rezult.find(params[:id]).destroy
    flash[:success] = "Rezult destroyed."
    redirect_to root_path
  end
  
   def edit
    @rezult = Rezult.find(params[:id])
    @title = "Edit Rezult"
  end
  
  def update
    @rezult = Rezult.find(params[:id])
    if @rezult.update_attributes(params[:rezult])
      flash[:success] = "Rezult updated."
      redirect_to @rezult
    else
      @title = "Edit rezult"
      render 'edit'
    end
  end
  
  def new
  @rezult = Rezult.new(:p1_id => params[:id])
end

  
end