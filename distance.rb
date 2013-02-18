class Distance
  attr_accessor :start_point, :end_point
  
  def initialize(start_point, end_point)
    self.start_point = start_point
    self.end_point = end_point
  end
  
  def calculate
    (x_2 + y_2)**(0.5)
  end
  
  def x_2
    (start_point.x - end_point.x)**2
  end
  
  def y_2
    (start_point.y - end_point.y)**2
  end
end