a = "I want to test  to see if this string contains some phrase right"
b = "some phrase" # => returns true
c = "I want" # => also returns true
d = "random phrase" # => returns false
b2 = "some phrase!" # => false

# puts a.include?(b) 
# puts a.include?(c) 
# puts a.include?(d) 
# puts a.include?(b2) 

# delete_start = 0
# delete_end = 0

# split_arr = a.split(" ")
# print split_arr
# puts a.include?("to test")

phrases_to_check = ["I took a walk!", "He had some mighty fine chunky bacon!", "This is the end.", "Be Kind, Rewind was an awful film"]

banned_phrases = ["awful", "chunky bacon", "end", "walk"]

for i in (0...phrases_to_check.length)
    banned_phrases.each do |phrase|
        phrases_to_check[i] = phrases_to_check[i].gsub(phrase, "CENSORED")
    end
end

puts phrases_to_check