require 'rubygems'
require 'rspec'
require_relative "../point"

describe Point do
  let(:point) { Point.new(0,1) }
  
  it "should have x" do
    point.x.should == 0
  end
  
  it "should have a y" do
    point.y.should == 1
  end
  
  it "should be == to another point if it has the same x and y" do
    other_point = Point.new(0,1)
    point.should == other_point
  end
end