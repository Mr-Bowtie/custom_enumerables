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

  def my_any?(pattern = nil)
    if block_given?
      self.my_each { |el| return true if yield el }
    elsif pattern
      self.my_each { |el| return true if pattern === el }
    else
      self.my_each { |el| return true if el }
    end
    false
  end

  def my_none?(pattern = nil)
    if block_given?
      self.my_each { |el| return false if yield el }
    elsif pattern
      self.my_each { |el| return false if pattern === el }
    else
      self.my_each { |el| return false if el }
    end
    true
  end

  def my_inject(initial = nil)
    accum = initial ? initial : self[0]
    if initial
      self.my_each { |el| accum = yield accum, el }
    else
      shift = is_a?(Hash) ? slice(keys[1], keys[-1]) : self[1..-1]
      shift.my_each { |el| accum = yield accum, el }
    end
    accum
  end
end
