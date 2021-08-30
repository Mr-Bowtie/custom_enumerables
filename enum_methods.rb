module Enumerable
  def my_each
    self.length.times do |el|
      yield self[el]
    end
  end

  def my_each_with_index
    self.length.times do |el|
      yield self[el], el
    end
  end
end
