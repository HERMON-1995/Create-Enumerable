# frozen_string_literal: true

class MyList
  def initialize(*data)
    @list = data
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3)
list.each { |x| print x }
