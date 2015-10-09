def combine_anagrams(words)
  result = Array.new()
  return result unless words.kind_of?(Array)
  return result unless !(words.empty?)
  while words.length > 0
     anagrams_subset = words.collect { |word| 
        if words[0].chars.sort { |a, b| a.casecmp(b) } .join == 
           word.chars.sort { |a, b| a.casecmp(b) } .join ; word; end }
     anagrams_subset.compact!
     result << Array.new(anagrams_subset)
     anagrams_subset.each { |word| words.delete(word) }
  end
  result
end
