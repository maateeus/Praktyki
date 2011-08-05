require 'spec_helper'

describe P1sController do
render_views

describe "POST 'create'" do

    describe "failure" do

      before(:each) do
        @attr = { :nazwa => "", :opis => "" }
      end

      it "should not create a user" do
        lambda do
          post :create, :p1 => @attr
        end.should_not change(P1, :count)
      end

      it "should have the right title" do
        post :create, :p1 => @attr
        response.should have_selector("title", :content => "newProject")
      end

      it "should render the 'new' page" do
        post :create, :p1 => @attr
        response.should render_template('newProject')
      end
    end
  end

  describe "success" do

      before(:each) do
        @attr = { :nazwa => "New Project", :opis => "opis"}
      end

      it "should create a project" do
        lambda do
          post :create, :p1 => @attr
        end.should change(P1, :count).by(1)
      end

      it "should redirect to the Project show page" do
        post :create, :p1 => @attr
        response.should redirect_to(p1_path(assigns(:p1)))
      end    
    end
  
  
  
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

end
