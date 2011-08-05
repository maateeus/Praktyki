class P1sController < ApplicationController
   def show
    @p1 = P1.find(params[:id])
    @problems=@p1.problems.paginate(:page => params[:page])
    @title = @p1.nazwa
  end

  
  def home
    @title="Home"
    @p1s = P1.all
  end
 def newProject
   @p1 = P1.new
    @title="newProject"
  end 
  
  def destroy
    P1.find(params[:id]).destroy
    flash[:success] = "Project destroyed."
    redirect_to root_path
  end
  
    def create
    @p1 = P1.new(params[:p1])
    if @p1.save
      # Handle a successful save.
      flash[:success] = "New Project added!"
      redirect_to new_problem_path(:id => @p1.id)
    else
      @title = "newProject"
      render 'newProject'
    end
  end
  
    def edit
    @p1 = P1.find(params[:id])
    @title = "Edit Project"
  end
  

  
  

  def update
    @p1 = P1.find(params[:id])
    if @p1.update_attributes(params[:p1])
      flash[:success] = "Project updated."
      redirect_to @p1
    else
      @title = "Edit project"
      render 'edit'
    end
  end
  
end
