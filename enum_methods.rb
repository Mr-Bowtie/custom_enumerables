module Enumerable
  def my_each
    self.length.times do |itr|
      yield self[itr]
    end
  end

  def my_each_with_index
    self.length.times do |itr|
      yield self[itr], itr
    end
  end

  def my_select
    true_arr = []
    self.length.times do |itr|
      true_arr << self[itr] if yield(self[itr]) == true
    end
    true_arr
  end
end
