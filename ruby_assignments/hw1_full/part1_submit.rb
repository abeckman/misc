#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
  str.gsub(/[\W]/, "").downcase == str.gsub(/[\W]/, "").downcase.reverse
end

def count_words(str)
  word_count_hash = Hash.new(0)
  str.split(/\W+/).each { |word| word_count_hash[word.downcase] +=1 }
  word_count_hash
end
