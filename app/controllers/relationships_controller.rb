 
class RelationshipsController < ApplicationController
 def show
    @relationship = Relationship.find(params[:id])
    
    @title = @relationship.nazwa
  end

   def create
     
    @relationship  = Relationship.new(params[:relationship])
    @problem=Problem.create(:nazwa =>@relationship.nazwa ,:opis => @relationship.opis)
    @relationship.subproblem_id=@problem.id
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
  @relationship = Relationship.new(:problem_id => params[:id])
end

  
end