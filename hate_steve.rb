puts "Hi there, what is your name?"
user = gets.chomp

if user[0].downcase === 's'
    puts "GO AWAY, #{user.upcase}"
else
    puts "Hi there, #{user.capitalize}"
end