pos = 2

while true
  puts "left, right or neither"
  move = gets.chomp
  if move === 'left'
    pos -= 1
  elsif move === 'right'
    pos += 1
  end
  
  section = ["-", "-", "-", "-", "-"]
  section[pos] = "P"
  puts section.join
end