def find_common_words(words, dictionary)
  words.reduce([]) do |hash, word|
    matches_in_word = dictionary.filter do |vocab|
      word.include?(vocab) ? true : false
    end
    matches = matches_in_word.reduce([]) do |matches, match|
      hash << match
    end
  end
end

def make_hash(arr)
  arr.reduce({}) do |hash, word|
    unless hash.include?(word)
      hash[word] = 1
    else
      hash[word] += 1
    end
    hash
  end
end

def substrings(words, dictionary)
  words_arr = words.split(" ")
  common_words = find_common_words(words_arr, dictionary)
  make_hash(common_words)
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("go down go", dictionary)