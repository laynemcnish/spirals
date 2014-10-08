class Spiral

  def initialize(starting_number, width)
    @width = width
    @starting_number = starting_number
    @spiral_array = Array.new(@width) {Array.new(@width) {@starting_number}}
  end

  def starting_number
    @spiral_array[0][0]
  end

  def width
    @spiral_array[0].length
  end

  def max_number
    counter = []
    @spiral_array.each do |ary|
      num = ary.length

      counter << num
    end
    total = counter.inject(:+)
    @max_number = @starting_number + (total - 1)
  end

  def add_to_array
    add_to_first_row

  end

  private

  def add_to_first_row
    range = (0..(width - 1)).to_a
    first_row = @spiral_array[0]
    new_ary = range.zip(first_row).map {|a| a.inject(:+)}
    @spiral_array[0] = new_ary
  end

  def add_to_outer_column
    range = @spiral_array[0][01]  -  width - 1
    counter = 0
    @spiral_array.each do |ary|

    end
  end

end

#
# +0, +1, +2, +3
# +11, +12, +13, +4
# +10, +15, +14, +5
# +9, +8, +7, +6
#

range =