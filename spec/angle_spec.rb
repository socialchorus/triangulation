require 'rubygems'
require 'rspec'
require_relative "../point"
require_relative "../angle"
require_relative "../distance"

describe Angle do
	let(:point_1) { Point.new(0,0) }
	let(:point_2) { Point.new(0,1) }
	let(:point_3) { Point.new(1,0) }
	let(:angle) { Angle.new(point_1, point_2, point_3)}

	it "should calculate the angle" do
		angle.calculate.should == [45,45,90]
	end


end
