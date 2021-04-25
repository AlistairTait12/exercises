def position(alphabet)
    pos = 1
    for letter in ("a".."z")
        break if letter === alphabet
        pos += 1
    end
    pos
end

puts position("d")