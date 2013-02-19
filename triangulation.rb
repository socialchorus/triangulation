class Triangulation
  attr_accessor :first_point, :second_point, :third_point
  
  def initialize(first_point, second_point, third_point)
    self.first_point = first_point
    self.second_point = second_point
    self.third_point = third_point
  end
  
  def valid?
    !in_a_line?
  end

	def right?
		angles = Angle.new(first_point, second_point, third_point).calculate
		angles.include?(90)		
	end
  
  def in_a_line?
    lengths = [
      Distance.new(first_point, second_point).calculate,
      Distance.new(second_point, third_point).calculate,
      Distance.new(third_point, first_point).calculate
    ].sort
    lengths[0] + lengths[1] == lengths[2]
  end
end
