require 'rubygems'
require 'rspec'
require_relative "../triangulation"

describe Triangulation do
  describe "valid?" do
    it "will be true if the points are laid out in a triangle" do
      p1 = [2, 5]
      p2 = [0, 0]
      p3 = [5, 0]

      triangulation = Triangulation.new(p1,p2,p3)
      triangulation.valid?.should == true
    end
    it "will be false if the points are not laid out in a triangle" do
      p1 = [1, 1]
      p2 = [1, 2]
      p3 = [1, 3]

      triangulation = Triangulation.new(p1,p2,p3)
      triangulation.valid?.should == false
    end
  end
  
  describe 'right?' do
    it "will be true if one of the angles is right" do
      a = Math.sqrt((p1[0] - p2[0])^2) + (p1[1] - p2[1])^2))
      b = Math.sqrt((p2[0] - p3[0])^2) + (p2[1] - p3[1])^2))
      c = Math.sqrt((p3[0] - p1[0])^2) + (p3[1] - p1[1])^2))
      
      a^2 + b^2 = c^2
      a^2 + b^2 = c^2
      a^2 + b^2 = c^2


    end

    it "will not be true if the none of the angles is a right angle"
  end
  
  describe 'obtuse?' do
  end
  
  describe 'acute?' do
  end
  
  describe 'report' do
  end
end