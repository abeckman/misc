def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  if s == ""; return false; end
  if s =~ /^[^A-Z]/i; return false; end
  if /^[aeiouAEIOU]/ =~ s
    return false
  else
    return true
  end
end

def binary_multiple_of_4?(s)
  if s =~ /^\d+$/
    if s.to_i % 4 == 0
      return true
    else return false
    end
    else return false
  end
end

# starts_with_consonant?("v")
# starts_with_consonant?("u")
starts_with_consonant?("")
starts_with_consonant?("8")

binary_multiple_of_4?("a100")
binary_multiple_of_4?("80")
binary_multiple_of_4?("81")

