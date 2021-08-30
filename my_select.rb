require_relative 'enum_methods'

arr = [1, 'hey', 3, 'what?', 5]
puts '==: my_select'
new_arr = arr.my_select { |el| el.class == String }
p new_arr
puts '==: select'
second_arr = arr.select { |el| el.class == String }
p second_arr
