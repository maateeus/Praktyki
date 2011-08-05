class ProjectCell < Cell::Rails

  def recent
    @p1s2 = P1.find(:all, :order => "RANDOM()",:limit =>1)
    @p1s = @opts[:ObjectList]
    @wrapperID = @opts[:wrapperID]
    @header = @opts[:header]
    @wrapperClass = @opts[:wrapperClass]
    @IconSize = @opts[:IconSize]
   
    render
  end

end
