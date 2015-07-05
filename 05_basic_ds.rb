# Write a fucntion that checks if a strings has only uniq characters

# Rubyist's solution
def check_uniq_chars_in_str(str)
  str.chars.length == str.chars.uniq.length
end

def check_uniq_chars_in_str(str)
  uniq_chars = []
  (0...(str.length)).each do |i|
    char = str[i]
    if uniq_chars.index(char)
      return false
    else
      uniq_chars.push(char)
    end
  end
  return true
end

def check_uniq_chars_in_str(str)
  (0..(str.length-2)).each do |i|
    char1 = str[i]
    ((i+1)..(str.length - 1)).each do |j|
      char2 = str[j]
      return false if char1 == char2
    end
  end

  return true
end

