# Write a function that checks if 2 strings
# are anagrams or not.

def check_anagrams(s1, s2)
  return false if s1.length != s2.length
  s1.chars.sort == s2.chars.sort
end

def check_anagrams(s1, s2)
  return false if s1.length != s2.length

  hsh = Hash.new(0)
  (0...(s1.length)).each do |i|
    hsh[s1[i]] += 1
  end

  (0...(s2.length)).each do |j|
    char = s2[j]
    hsh[char] -= 1
    return false if hsh[char] < 0
  end

  return true
end