class Triangle
  
  #create getter and accessor methods for the instance variables len1, len2, len3
  attr_accessor :len1, :len2, :len3

  #initialize method that takes len1, len2, len3 as anrguments and assign them values
  def initialize(len1, len2, len3)
    @len1 = len1
    @len2 = len2
    @len3 = len3
  end

  #kind method to determine the type of triangle and check if its valid
  def kind
    if is_triangle?
      sides = [len1, len2, len3]
      if sides.uniq.size == 1
        :equilateral
      elsif sides.uniq.size == 2
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

  private
  def is_triangle?
    sorted = [len1, len2, len3].sort
    longest_side = sorted.pop
    longest_side < sorted.sum
  end

  def triangle_type

  end
end