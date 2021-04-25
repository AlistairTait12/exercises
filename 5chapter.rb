# creating instance of string class
todo_1 = String.new("wash the dog")
puts todo_1.capitalize

# similar to
todo_2 = "wash the dog"
puts todo_2

one_string = String.new("1")
two_string = String.new("2")

puts one_string.+(two_string)

# You can even call some methods on the main object
puts +(999)

puts is_a?(Object)