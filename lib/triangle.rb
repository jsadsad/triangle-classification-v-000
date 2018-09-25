class Triangle
 attr_reader :arg1, :arg2, :arg3
 
 def initialize(arg1, arg2, arg3)
   @arg1 = arg1
   @arg2 = arg2
   @arg3 = arg3
 end
 
 def kind
  if a == b && b == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
  
  class TriangleError < StandardError
  end
end
