alive = true
won = false
chosen = false
options = ['forward', 'left', 'right']

while !chosen
  puts "1. you are facing forward, type 'forward', 'left' or 'right' to move"
  choice = gets.chomp.downcase
  chosen = true if options.include?(choice)
end

if choice === 'forward'
  puts "you may proceed"
elsif choice === 'left'
  puts "you were killed by a werewolf, you lose"
  alive = false
elsif choice === 'right'
  puts "you were killed by a goblin, you lose"
  alive = false
end

if alive
  chosen = false
  while !chosen
    puts "2. you are facing forward, type 'forward', 'left' or 'right' to move"
    choice = gets.chomp.downcase
    chosen = true if options.include?(choice)
  end
  
  if choice === 'forward'
    puts "you won!"
    won = true
  elsif choice === 'left'
    puts "you were killed by a werewolf, you lose"
    alive = false
  elsif choice === 'right'
    puts "you were killed by a goblin, you lose"
    alive = false
  end
end

puts alive
puts won