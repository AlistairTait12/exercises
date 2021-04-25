class String
  def hi
    "Hi, #{self}"
  end

  def shoutify
    self.upcase
  end
end

class Array
  def average
    self.sum.to_f / self.length
  end
end

puts "Alistair".shoutify
puts "hello world".shoutify

puts [2, 4, 1, 5, 7].average
puts [0,4,8,2,5,0,2,6].average