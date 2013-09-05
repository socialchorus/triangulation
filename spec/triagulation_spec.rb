require 'rubygems'
require 'rspec'
require_relative "../triangulation"

describe Triangulation do
  describe "valid?" do
    it "will be true if the points are laid out in a triangle" do
      t1 = Triangulation.new([0, 4], [1, 5], [2, 6])
      t1.valid?.should == true
    end

    it "will be false if the points are not laid out in a triangle"
  end
  
  describe 'right?' do
    it "will be true if one of the angles is right"
    it "will not be true if the none of the angles is a right angle"
  end
  
  describe 'obtuse?' do
  end
  
  describe 'acute?' do
  end
  
  describe 'report' do
  end
end