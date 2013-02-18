require 'rubygems'
require 'rspec'
require_relative "../point"
require_relative "../distance"

describe Distance do
  let(:point_1) { Point.new(0,1) }
  let(:point_2) { Point.new(0,0) }
  let(:distance) { Distance.new(point_1, point_2)}
  
  it "should calculate the distance in y" do
    distance.calculate.should == 1
  end
end