barry_beef = {
  :first_name => "Barry",
  :last_name => "Beef",
  :age => "26",
  :occupation => "Butcher",
  :hobbies => ["cooking", "painting"]
}

array_of_hashes = [
  {'name' => 'John', 'hobby' => 'music'},
  {'name' => 'Harry', 'hobby' => 'art'},
  {'name' => 'Joseph', 'hobby' => 'music'},
  {'name' => 'Fred', 'hobby' => 'knitting'}
]

by_hobby = {}

array_of_hashes.each do |person| # Iterate through the array to sort
  hobby = person['hobby'] 

  if by_hobby[hobby] == nil
    by_hobby[hobby] = []
  end

  by_hobby[hobby].push(person['name'])
end

puts by_hobby