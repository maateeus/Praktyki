require 'spec_helper'

describe Problem do
      before(:each) do
    @p1 = Factory(:p1)
    @attr = { :nazwa => "value for content" :opis =>"kkk"}
  end
  
   it "should reject nazwa that are too long" do
    long_name = "a" * 256
    long_name_user = P1.new(@attr.merge(:nazwa => long_name))
    long_name_user.should_not be_valid
  end

end
