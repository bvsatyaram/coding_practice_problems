# Write a function tha returns the n-th number in
# the following fibonacci sequence:
#   1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89,...

def fibonacci(n)
  return 1 if n == 1 || n == 2
  f1 = 1
  f2 = 1
  tmp = 0
  (3..n).each do |i|
    tmp = f1
    f1 = f2
    f2 = tmp + f2
  end

  return f2
end

puts fibonacci(100)