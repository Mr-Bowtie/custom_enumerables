require_relative 'enum_methods'

arr = [1, 2, 3]
hsh = { a: 1, b: 2, c: 3 }
puts '==: my_inject'
p arr.my_inject() { |sum, n| sum + n }
p arr.my_inject(3) { |sum, n| sum + n }
p hsh.my_inject(0) { |sum, (k, v)| sum + v }
p arr.my_inject(:+)
p arr.my_inject(3, :*)
puts '==: inject'
p arr.inject() { |sum, n| sum + n }
p arr.inject(3) { |sum, n| sum + n }
p hsh.inject(0) { |sum, (k, v)| sum + v }
p arr.inject(:+)
p arr.inject(3, :*)
