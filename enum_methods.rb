module Enumerable
  def my_each
    if block_given?
      for el in self
        yield el
      end
      return self
    else
      return to_enum(:my_each)
    end
  end

  def my_each_with_index
    iterator = 0
    if block_given?
      for el in self
        yield el, iterator
        iterator += 1
      end
      return self
    else
    end
    return to_enum(:my_each_with_index)
  end

  def my_select
    true_arr = []
    self.length.times do |itr|
      true_arr << self[itr] if yield(self[itr])
    end
    true_arr
  end
end
