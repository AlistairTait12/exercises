# > Given a list of tweets,
# > Replace each negative word in that tweet for the word CENSORED

# Take a tweet, split the tweet, if it matches a censored word,
# replace as above. Reprint the tweet

# Areas for improvement: 
# > Does not censor words preceeded/followed by
#   punctuation/ othere special characters.
# > Should also be case insensitive


# Tweets to check
test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks.",

  # Some additional tweets for testing
  "This foolish president is going to make 'Murica bad again.",
  "This test tweet SUCKS!!!"
]

# List of punctuation to check
punctuation = ['!', '?', '.', ',']

# List of banned phrases
banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

# Checker
for i in (0...test_tweets.length)
    censored_tweet = []
    test_tweets[i].split.each do |word|

        new_word = []
        new_punc = []
        complete_word = ''

        word.chars.each do |char|
            if punctuation.include?(char)
                new_punc.push(char)
            else
                new_word.push(char)
            end
        end

        if banned_phrases.include?(new_word.join.downcase)
            complete_word << "CENSORED"
        else
            complete_word << new_word.join
        end

        if new_punc.length > 0
            complete_word << new_punc.join
        end

        censored_tweet << complete_word
    end
    test_tweets[i] = censored_tweet.join(" ")
end

puts test_tweets