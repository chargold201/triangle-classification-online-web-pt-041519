class Triangle
  attr_accessor :side_one, :side_two, :side_three, :side_array

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    @side_array = [@side_one, @side_two, @side_three]
  end

  def kind
    if @side_array.any? {|x| x <= 0} || @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one || @side_three + @side_one <= @side_two
      raise TriangleError
    elsif @side_one == @side_two && @side_two == @side_three
      return :equilateral
    elsif @side_one != @side_two && @side_two != @side_three && @side_three != @side_one
      return :scalene
    else
      return :isosceles
    end
  end

  class TriangleError < StandardError

  end
end
