def substring(phrase)
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","teste"]
  new_hash=Hash.new
  if phrase.include?(' ')
    fulltext = phrase.split(' ')
  else
    fulltext=[phrase]
  end
  fulltext.each do |word|

    if dictionary.include?(word)
      #new_hash[word]||=0
      new_hash[word]+=1
      puts new_hash
    end
  end
end
puts "Type a sentence"
phrase = gets.chomp


substring(phrase)
