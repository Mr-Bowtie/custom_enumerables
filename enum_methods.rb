module Enumerable
  def my_each
    self.length.times do |el|
      yield self[el]
    end
  end
end
