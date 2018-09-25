class Triangle
 attr_reader :arg1, :arg2, :arg3
 
 def initialize(arg1, arg2, arg3)
   @arg1 = arg1
   @arg2 = arg2
   @arg3 = arg3
 end
 
 def kind
  if arg1 == b && b == c
    :equilateral
  elsif arg1 == b || b == c || arg1 == c
    :isosceles
  else
    :scalene
  end
  
  class TriangleError < StandardError
  end
  
  def validate_triangle
    real_triangle = [(arg1 + b > c), (arg1 + c > b), (b + c > arg1)]
    [a, b, c].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end
end
