 
class ProblemsController < ApplicationController
  def show
    @problem = Problem.find(params[:id])
    
    @title = @problem.nazwa
  end

   def create
    @problem  = Problem.new(params[:problem])
    if @problem.save
      flash[:success] = "Problem created!"
      redirect_to @problem
    else
      render :action => "new"
    end
  end

   def destroy
    Problem.find(params[:id]).destroy
    flash[:success] = "Problem destroyed."
    redirect_to root_path
  end
  
   def edit
    @problem = Problem.find(params[:id])
    @title = "Edit Problem"
  end
  
  def update
    @problem = Problem.find(params[:id])
    if @problem.update_attributes(params[:problem])
      flash[:success] = "Problem updated."
      redirect_to @problem
    else
      @title = "Edit problem"
      render 'edit'
    end
  end
  
  def new
  @problem = Problem.new(:p1_id => params[:id])
end

  
end