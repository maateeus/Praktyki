class Project
  attr_accessor :nazwa, :opis
  
  def initialize(attributes={})
    @nazwa = attributes[:nazwa]
    @opis=attributes[:opis]
  end
  def formatted_email
    "#{@nazwa} <#{@opis}>"
  end
end
