# frozen_string_literal: true

# My Enumerable module is top_level module for three method
class MyList
  attr_accessor :list
  def initialize
    @list = [1,2,3,4]
  end
 module MyEnumerable
     def filter
        new_arr = []
        each { |x| new_arr << x if yield(x) }
        new_arr
    end
  end
  def less_than_5
    @list.all? { |item| item < 5 }
 end
 include MyList
end
  
