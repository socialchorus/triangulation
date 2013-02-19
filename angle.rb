class Angle
	DEGREE = 57.2957795
	attr_accessor :first_point, :second_point, :third_point
	
	def initialize(first_point, second_point, third_point)
		self.first_point = first_point
		self.second_point = second_point
		self.third_point = third_point
	end

	def calculate
    a = Distance.new(first_point, second_point).calculate
    b = Distance.new(second_point, third_point).calculate
    c = Distance.new(third_point, first_point).calculate

		angle_a = (Math.acos(cos_angle(a,b,c))*DEGREE).round(1)
		angle_b = (Math.acos(cos_angle(b,c,a))*DEGREE).round(1)
		angle_c = 180 - angle_a - angle_b

		[angle_a, angle_b, angle_c].sort
	end

	def cos_angle(x,y,z)
			(y**2 + z**2 - x**2).to_f / (2*y*z)
	end

end
