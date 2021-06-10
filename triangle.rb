# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  raise TriangleError if a < 2 or b < 2 or c < 2
  raise TriangleError unless ((a+b) > c) and ((a+c) > b) and ((b+c) > a)

  return :equilateral if a == b && a == c
  return :isosceles if (a == b && a != c) or (a == c && a != b) or (b == c && a != b)
  return :scalene if a != b && b != c

  raise TriangleError
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
