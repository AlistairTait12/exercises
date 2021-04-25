dict = {
    "bear" => "a creature that fishes in the river for salmon",
    "river" => "a body of water that contains salmon, and sometimes bears",
    "salmon" => "a fish, somtimes in a river, sometimes in a bear, and sometimes in both"
}

word = ''
while word != 'exit'.downcase
    puts "Type the word you wish to define:"
    word = gets.chomp
    puts dict[word.to_s]
end