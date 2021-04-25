class Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end

  def meow
    "#{@name} says Miaow!"
  end

  def observe
    if ["a", "e", "i", "o", "u"].include?(@color[0]) 
      puts "You see an #{@color} cat"
    else
      puts "You see a #{@color} cat"
    end
  end

end

tabby = Cat.new("Tabby", "tortoiseshell", 12)
ginge = Cat.new("Ginge", "orange", 5)

puts tabby.meow
tabby.observe
ginge.observe