 
class RelationshipsController < ApplicationController


   def create
    @relationship  = Relationship.new(params[:relationship])
    if @relationship.save
      flash[:success] = "Problem created!"
      redirect_to @problem
    else
      render :action => "new"
    end
  end

   def destroy
    Relationship.find(params[:id]).destroy
    flash[:success] = "Problem destroyed."
    redirect_to root_path
  end
  

  

  
  def new
  @relationship = Relationship.new(:fallowed_id => params[:id])
end

  
end