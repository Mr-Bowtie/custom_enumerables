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
    output = self.is_a?(Hash) ? {} : []
    if block_given?
      self.my_each do |el|
        if yield el
          self.is_a?(Hash) ? output.store(el[0], el[1]) : output << el
        end
      end
      return output
    else
      return to_enum(:my_select)
    end
  end

  def my_all?(pattern = nil)
    if block_given?
      self.my_each { |el| return false unless yield el }
    elsif pattern
      self.my_each { |el| return false unless pattern === el }
    else
      self.my_each { |el| return false unless el }
    end
    true
  end
end
