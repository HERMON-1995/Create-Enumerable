# frozen_string_literal: true

require_relative 'enumerable'

# This is the top_level class for the enumerable method to use
class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

# test.rb
list = MyList.new(1, 2, 3, 4)

puts(list.all? { |e| e < 5 }) # true
puts(list.all? { |e| e > 5 }) # false

puts(list.any? { |e| e == 2 }) # true
puts(list.any? { |e| e == 5 }) # false

p(list.filter(&:even?)) # [2, 4]
p(list.filter { |x| x >= 2 }) # [2, 3, 4]
