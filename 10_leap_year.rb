# Write a program that takes the duration of
# a year (in fractional days) for an imaginary
# planet as an input and produces a leap-year
# rule that minimizes the difference to the
# planet’s solar year.
# The input is a set of 3 numbers, first is the
# integral part of the number of days. Second and
# third are the numerator and denominator of the
# fractional part.

def suggest_leap(int, num, den)
  return (1.0*den/num).round
end

puts suggest_leap(365, 101, 400)