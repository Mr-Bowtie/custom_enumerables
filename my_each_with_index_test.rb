require_relative './enum_methods.rb'

arr = [1, 2, 3, 4, 5, 6]
puts '==: #my_each_with_index'
arr.my_each_with_index { |el, idx| puts "#{el} is at index #{idx}" }
puts '==: #each_with_index'
arr.each_with_index { |el, idx| puts "#{el} is at index #{idx}" }
