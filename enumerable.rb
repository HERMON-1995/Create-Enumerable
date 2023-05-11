# frozen_string_literal: true

# My Enumerable module is top_level module for three method
class MyList
  def initialize(data)
    @list = data
  end
  def each(&block)
    @list.each(&block)
  end

  include Enumerable

  def less_than_5
   puts(@list.all? { |item| item < 5 })
  end
end

list = MyList.new([1,2,3,4])

list.less_than_5
  
