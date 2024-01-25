def substring(phrase)
  dictionary = %w[below down go going horn how howdy it i low own part partner
                  sit teste]
  new_hash = {}
  fulltext = if phrase.include?(' ')
               phrase.split(' ')
             else
               [phrase]
             end
  fulltext.each do |word|
    next unless dictionary.include?(word)

    # new_hash[word]||=0
    new_hash[word] += 1
    puts new_hash
  end
end
puts 'Type a sentence'
phrase = gets.chomp

substring(phrase)
puts 'teste'
