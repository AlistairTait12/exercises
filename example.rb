
section = 0 # We set the start of the river
pos = 2 # We start player at position 2
river = "-----,--C--,CC-CC,CC-CC".split(",") # we set starting layout of river

while true
    river[section][pos] = 'P' # Set player position for this turn. We are referencing which part of the river the the player is at
    puts river # Print river
    move = gets.chomp # Ask player for move
    river = "-----,--C--,CC-CC,CC-CC".split(",") # Reset the output of river
    if move == 'right' # Decide where 'P' goes based on player choice
        pos += 1
    elsif move == 'left'
        pos -= 1
    end
    section += 1 # Progress to next section of the river
end

# This code doesn't totally work
# You will need to find out how to check if the player is in the same place as a crocodile
# You will need a way to 'break' out of the program if the player is in same place as crocodile
# Possibly other things too!