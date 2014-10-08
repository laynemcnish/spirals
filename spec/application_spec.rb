require 'spec_helper'

describe 'Spiral maker' do

  describe 'it can make a spiral array' do
    it 'should initialize with a width and a height' do
      Spiral.new(4, 4)
    end
    it 'can find a width' do
      spiral = Spiral.new(5, 4)
      expect(spiral.width).to eq(4)
    end
    it 'can find the starting number' do
      spiral = Spiral.new(4, 5)
      expect(spiral.starting_number).to eq(4)
    end

    it 'can find the max number' do
      spiral = Spiral.new(1, 4)
      expect(spiral.max_number).to eq(16)
    end

    it 'can add to the array' do
      spiral = Spiral.new(1, 4)
      expect(spiral.add_to_array).to eq([1,2,3,4])
    end
  end
end

