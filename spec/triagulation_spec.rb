require 'rubygems'
require 'rspec'
require_relative "../triangulation"
require_relative "../point"
require_relative "../distance"
require_relative "../angle"

describe Triangulation do
  describe "valid?" do
    it "will be true if the points are laid out in a triangle" do
      triangle = Triangulation.new(Point.new(0,0), Point.new(1,0), Point.new(0,1))
      triangle.valid?.should == true
    end
    
    it "will be false if all the points are the same" do
      triangle = Triangulation.new(Point.new(0,0), Point.new(0,0), Point.new(0,0))
      triangle.valid?.should == false
    end
    
    it "will be false if all three points are in the same line in the x axis" do
      triangle = Triangulation.new(Point.new(0,1), Point.new(0,2), Point.new(0,3))
      triangle.valid?.should == false
    end
    
    it "will be false if all three points are in the same line in the y axis" do
      triangle = Triangulation.new(Point.new(0,0), Point.new(1,0), Point.new(2,0))
      triangle.valid?.should == false
    end
    
    it "will be false if all three points are in another line" do
      triangle = Triangulation.new(Point.new(0,0), Point.new(1,3), Point.new(2,6))
      triangle.valid?.should == false
    end
  end
  
  describe 'right?' do
    it "will be true if one of the angles is right" do
			triangle = Triangulation.new(Point.new(0,0), Point.new(0,1), Point.new(1,0))
			triangle.right?.should == true
		end

    it "will not be true if the none of the angles is a right angle" do
			triangle = Triangulation.new(Point.new(0,0), Point.new(4,0), Point.new(1,3))
			triangle.right?.should == false
		end
  end
  
  describe 'obtuse?' do
		it "will be true if one of the angles is greater than ninty" do
			triangle = Triangulation.new(Point.new(0,1), Point.new(3,0), Point.new(5,0))
			triangle.obtuse?.should == true
		end

		it "will not be true if one of the angles is right " do
			triangle = Triangulation.new(Point.new(0,0), Point.new(0,1), Point.new(1,0))
		  triangle.obtuse?.should == false
		end

		it "will not be true if the angles are acute" do
			triangle = Triangulation.new(Point.new(0,0), Point.new(0,8), Point.new(9,3))
		  triangle.obtuse?.should == false
		end		
  end
  
  describe 'acute?' do
  end
  
  describe 'report' do
  end
end
