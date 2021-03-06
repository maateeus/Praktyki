require 'spec_helper'

describe P1 do
  before(:each) do
    @attr = { :nazwa => "Example", :opis => "opis" }
  end

  it "should create a new instance given valid attributes" do
    P1.create!(@attr)
  end

  it "should require a nazwa" do
    no_name_p = P1.new(@attr.merge(:nazwa => ""))
    no_name_p.should_not be_valid
  end
   it "should require a opis" do
    no_name_o = P1.new(@attr.merge(:nazwa => ""))
    no_name_o.should_not be_valid
  end
  
  it "should reject nazwa that are too long" do
    long_name = "a" * 256
    long_name_user = P1.new(@attr.merge(:nazwa => long_name))
    long_name_user.should_not be_valid
  end
  
end
