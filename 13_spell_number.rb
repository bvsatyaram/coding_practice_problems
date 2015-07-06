# Write a method that takes in a number as input and prints the spelling
# of the number in english. Handle the case till 999,999,999,999,999.
# 
# Eg. 1947 should return "One Thousand Nine Hundred and Forty Seven"
# Assume that the input is always a natural number.

def spell_number(n)
  digits = %w{One Two Three Four Five Six Seven Eight Nine}
  teens = %w{Ten Eleven Twelve Thirteen Fourteen Fifteen Sixteen Seventeen Eighteen Nineteen}
  tens = %w{Twenty Thirty Forty Fifty Sixty Seventy Eighty Ninety}
  if n <= 0
    return ""
  elsif n < 10
    spelling = digits[n-1]
  elsif n < 20
    spelling = teens[n-10]
  elsif n < 100
    spelling = tens[(n/10) - 2]
    if n%10 != 0
      spelling += " " + digits[(n%10) - 1]
    end
  elsif n < 1_000
    hundreds_digit = n/100
    spelling = digits[hundreds_digit - 1] + " Hundred"
    spelling += " and " + spell_number(n%100) if n%100 != 0
  elsif n < 1_000_000
    thousands = n/1000
    spelling = spell_number(thousands) + " Thousand"
    spelling += " " + spell_number(n%1000) if n%1000 != 0
  elsif n < 1_000_000_000
    millions = n/1_000_000
    spelling = spell_number(millions) + " Million"
    spelling += " " + spell_number(n%1_000_000) if n%1_000_000 != 0
  elsif n < 1_000_000_000_000
    billions = n/1_000_000_000
    spelling = spell_number(billions) + " Billion"
    spelling += " " + spell_number(n%1_000_000_000) if n%1_000_000_000 != 0
  elsif n < 1_000_000_000_000_000
    trillions = n/1_000_000_000_000
    spelling = spell_number(trillions) + " Trillion"
    spelling += " " +8 spell_number(n%1_000_000_000_000) if n%1_000_000_000_000 != 0
  end
  return spelling
end

[
  1, 7, 9, 10, 11, 17, 19, 20, 29, 77, 90, 99,
  100, 101, 234, 600, 999, 1000, 1001, 6000,
  234000, 234001, 234500, 234999, 999999,
  1000000, 1000001, 1111115, 999999999,
  1_000_000_000, 1_000_000_001, 1_111_111_115,
  999_999_999_999, 1_000_000_000_000, 1_000_000_000_001,
  1_111_111_111_115, 999_999_999_999_999
].each do |i|
  puts "#{i} => #{spell_number(i)}"
end










