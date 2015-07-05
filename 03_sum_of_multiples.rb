# Write a function that takes a number as
# argument and returns the sum of all the
# numbers not more than the argument that are
# mulitples of 3 or 5 but not both.
def slow_sum_of_multiples_of_3_xor_5(n)
  multiples_3 = []
  multiples_5 = []
  (1..n).each do |i|
    if i%3 == 0
      multiples_3.push(i)
    end
    if i%5 == 0
      multiples_5.push(i)
    end
  end
  multiples_3.each do |i|
    multiples_5.each do |j|
      if i == j
        multiples_3.delete(i)
        multiples_5.delete(j)
      end
    end
  end

  sum = 0
  multiples_3.each do |i|
    sum += i
  end
  multiples_5.each do |j|
    sum += j
  end

  return sum
end

def vis_sum_of_multiples_of_3_xor_5(n)
  return sum_of_multiples(n, 3) + sum_of_multiples(n, 5) - 2*sum_of_multiples(n, 15)
end

def sum_of_multiples(n, factor)
  quotient = n/factor
  return factor*quotient*(quotient+1)/2
end

def all_stars_sum_of_multiples_of_3_xor_5(n)
  sum = 0
  (1..n).each do |i|
    if (i%3 == 0 || i%5 == 0) && (i%15 != 0)
      sum += i
    end
  end

  return sum
end

def sum_of_multiples_of_3_xor_5(n)
  (1..n).select{|i| (i%3 == 0 || i%5 == 0) && (i%15 != 0)}.reduce(:+)
end

puts sum_of_multiples_of_3_xor_5(20000000)