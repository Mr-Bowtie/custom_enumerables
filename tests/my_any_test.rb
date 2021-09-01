require_relative '../enum_methods'

arr = [1, 2, 3, 'hello', nil]
hsh = { a: 1, b: 'hey', c: [1, 2] }

puts '==: my_any?'
puts arr.my_any?
puts arr.my_any?(String)
puts arr.my_any? { |el| el % 2 == 0 }
puts hsh.my_any? { |k, v| v.instance_of?(String) }
puts '==: any?'
puts arr.any?
puts arr.any?(String)
puts arr.any? { |el| el % 2 == 0 }
puts hsh.any? { |k, v| v.instance_of?(String) }
