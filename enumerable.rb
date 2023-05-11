# frozen_string_literal: true

module MyEnumerable
  def filter
    new_arr = []
    each { |x| new_arr << x if yield(x) }
    new_arr
  end
end
