# frozen_string_literal: true

# My Enumerable module is top_level module for three method
module MyEnumerable
  def filter
    new_arr = []
    each { |x| new_arr << x if yield(x) }
    new_arr
  end
end
