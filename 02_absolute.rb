# Write a function that takes a number
# as argument and returns the absolute value
# of the number as the output.
def absolute(a)
  if a >= 0
    return a
  else
    return -a
  end
end

puts absolute 2
puts absolute -3