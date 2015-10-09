def sum(intarray)
  if intarray.size == 0
    return 0
  else
    i = 0
    intarray.each { |n| i += n }
    return i
  end  
end

def max_2_sum(intarray)
  if intarray.size == 0
    return 0
  elsif intarray.size == 1
    return intarray[0]
  else
    intarray.sort!
    sum = intarray[intarray.size - 1] + intarray[intarray.size - 2]
    return sum
  end
end

def sum_to_n?(intarray, n)
  if intarray.size == 0 || intarray.size == 1
    return false
  else
    i = 0
    while i < intarray.size do
      j = i + 1
      while j < intarray.size do
        return true if (intarray[i] + intarray[j]) == n
        j += 1
      end
      i += 1
    end
    return false
  end
end

puts sum_to_n?([2, 4, 4], 6)
puts sum_to_n?([1, 3, 4], 8)
