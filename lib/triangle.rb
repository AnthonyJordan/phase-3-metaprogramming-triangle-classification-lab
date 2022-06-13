class Triangle
  # write code here
  attr_accessor :first_side, :second_side, :third_side
  def initialize s1,s2,s3
    @first_side = s1
    @second_side = s2
    @third_side = s3
  end
  def kind
    if first_side<= 0 || second_side <=0 || third_side <=0 || first_side + second_side <= third_side || first_side + third_side <= second_side || second_side + third_side <= first_side
      raise TriangleError
    end
    if ((first_side == second_side) && (first_side == third_side) && (second_side == third_side))
      return :equilateral
    elsif ((first_side == second_side) || (first_side == third_side) || (second_side == third_side))
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
   
  end
end
