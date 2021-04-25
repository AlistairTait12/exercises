test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks.",
]
banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

for i in (0...test_tweets.length)
  banned_phrases.each {|phrase|
    test_tweets[i] = test_tweets[i].gsub(phrase, "CENSORED")
  }
end

puts test_tweets

# How would you do the above without gsub?