p1_score = 0
p2_score = 0

while true
    p1_d1 = rand(6) + 1
    p1_d2 = rand(6) + 1

    p2_d1 = rand(6) + 1
    p2_d2 = rand(6) + 1

    player_1 = p1_d1 + p1_d2
    player_2 = p2_d1 + p2_d2

    print "one: #{p1_d1} & #{p1_d2} = #{player_1}"
    puts
    print "two: #{p2_d1} & #{p2_d2} = #{player_2}"
    puts
    puts

    if player_1 > player_2 
        p1_score += 1
    elsif player_2 > player_1
        p2_score +=1
    end

    if p1_score == 2
        puts "player one wins!"
        break
    elsif p2_score == 2
        puts "player two wins!"
        break
    end
end