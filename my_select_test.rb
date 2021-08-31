require_relative 'enum_methods'

arr = [1, 'hey', 3, 'what?', 5]
hsh = { a: 1, b: 2, c: 3 }
puts '==: my_select'
new_arr = arr.my_select { |el| el.class == String }
new_hsh = hsh.my_select { |k, v| [:a, :b].include?(k) }
p hsh.my_select
p new_arr
p new_hsh
puts '==: select'
second_arr = arr.select { |el| el.class == String }
second_hsh = hsh.select { |k, v| [:a, :b].include?(k) }
p hsh.select
p second_arr
p second_hsh
