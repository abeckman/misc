def combine_anagrams(words)
  if words.length == 0; return "[]"; end
  result = "["
  anagrams_subset = words.collect { |word| 
  if words[0].chars.sort { |a, b| a.casecmp(b) } .join == 
    word.chars.sort { |a, b| a.casecmp(b) } .join ; word; end }
  anagrams_subset.compact!
  result << "[\'" + anagrams_subset[0] + "\'"
  temp_anagrams = Array.new(anagrams_subset)
  temp_anagrams.slice!(0)
  if temp_anagrams.length > 0 
    temp_anagrams.each { |word| result << ", \'" + word + "\'"}
  end
  result << "]"
  anagrams_subset.each { |word| words.delete(word) }
  while words.length > 0
    anagrams_subset = words.collect { |word| 
      if words[0].chars.sort { |a, b| a.casecmp(b) } .join == 
        word.chars.sort { |a, b| a.casecmp(b) } .join ; word; end }
    anagrams_subset.compact!
    result << ", [\'" + anagrams_subset[0] + "\'"
    temp_anagrams = Array.new(anagrams_subset)
    temp_anagrams.slice!(0)
    if temp_anagrams.length > 0 
      temp_anagrams.each { |word| result << ", \'" + word + "\'"}
    end
    result << "]"
    anagrams_subset.each { |word| words.delete(word) }
  end
  result << "]"
  return result
end
