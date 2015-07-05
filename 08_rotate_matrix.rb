# A 2D matrix (not necessarily a square matrix) is given
# in the form of a multi-line string.
# Write a program that rotates the matrix 90 degrees
# counter clockwise.
# Assume that rows are separated by "\n" and cells are
# separated by spaces.
# 
# Eg. The input string "a b c\nd e f\ng h i" when printed
# results:
#   a b c
#   d e f
#   g h i
# 
# You need to translate it to "c f i\nb e h\na d g", which
# prints to:
#   c f i
#   b e h
#   a d g

def rotate_matrix(matrix_str)
  matrix = matrix_str.split("\n").collect{|row| row.split(" ")}
  no_rows = matrix.length
  no_columns = matrix.first.length
  rotated_matrix = []
  (1..no_columns).each do |i|
    rotated_matrix.push(matrix.collect{|row| row[no_columns - i]})
  end
  return rotated_matrix.collect{|row| row.join(" ")}.join("\n")
end

puts "Before Rotation:"
puts "1 2 3 4\n5 6 7 8\na b c d"
puts "\n"
puts "After Rotation:"
puts rotate_matrix("1 2 3 4\n5 6 7 8\na b c d")