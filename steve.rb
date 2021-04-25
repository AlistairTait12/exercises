def hate_s_greeting(name) # Your name better not begin with 's'
  if name[0].downcase === 's'
    "GET LOST, #{name.upcase}!"
  else
    "O hai thar, #{name.capitalize}!"
  end
end

name_hat = ["Steve", "John", "Alan", "Shirley", "Roy", "Bobby"]

puts hate_s_greeting(name_hat[rand(name_hat.length - 1)])