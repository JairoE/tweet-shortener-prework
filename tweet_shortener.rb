def dictionary
  {:hello => 'hi',
  :to => '2', :two => '2', :too => '2',
  :for => '4', :four => '4',
  :be => 'b',
  :you => 'u',
  :at => '@',
  :and => "@"}
end

def word_substituter(tweet)
  tweet = tweet.split(" ")

  tweet.each_with_index do |word, index|
    if dictionary.keys.include?(word)
      tweet[index] = dictionary[word]
    end
  end

  tweet.join(" ")

end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size < 140
    return tweet
  else
    return word_substituter(tweet)
  end
end
