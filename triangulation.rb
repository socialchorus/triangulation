class Triangulation
  def initialize(p1, p2, p3)
    @p1, @p2, @p3 = p1, p2, p3
  end

  def valid?
    return false if is_straight_line?
    return true if has_one_vertical_line?

    first_slope = (@p1.first + @p2.first).to_f / (@p1.last + @p2.last).to_f
    second_slope = (@p1.first + @p3.first).to_f / (@p1.last + @p3.last).to_f

    puts "first_slope #{first_slope}"
    puts "second_slope #{second_slope}"

    if first_slope == second_slope
      return false
    else
      return true
    end
  end

  def is_straight_line?
    puts "straight line? #{(@p1.first == @p2.first ) && (@p1.first == @p3.first)}"
    (@p1.first == @p2.first ) && (@p1.first == @p3.first)
  end

  def has_one_vertical_line?
    puts "one vertical line? #{(@p1.first == @p2.first) || (@p1.first == @p3.first) || (@p2.first == @p3.first)}"
    (@p1.first == @p2.first) || (@p1.first == @p3.first) || (@p2.first == @p3.first)
  end
end