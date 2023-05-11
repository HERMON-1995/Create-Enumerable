# frozen_string_literal: true

require_relative 'enumerable'
class MyList
  include MyEnumerable
  def initialize(*data)
    @list = data
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3)
puts(list.filter { |x| x >= 2 })
