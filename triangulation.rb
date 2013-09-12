class Triangulation
	attr_reader :p1, :p2, :p3

	def initialize(p1,p2,p3)
		@p1 = p1
		@p2 = p2
		@p3 = p3
	end

	def valid?
		if p1==p2 || p1==p3 || p2==p3
			false
		elsif p1[0]==p2[0] && p1[0]==p3[0] && p2[0]==p3[0]
			false
		elsif p1[1]==p2[1] && p1[1]==p3[1] && p2[1]==p3[1]
			false
		else
		    true 	 		
		end
	end

	def right?
	end

    def obtuse?
	end
	
	def acute?
	end
	
	def report?
	end
end

class Point
	attr_reader :x, :y
	def initialize(x,y)
		@x = x
		@y = y
	end
end