# The file 'data/binary_matrix.txt' has a 2D matrix.
# The matrix has only 0s and 1s.
# Write a program that transforms the matrix as follows:
# If an element of the matrix is zero, then it's entire row
# and column should be set to zero.

# The following code is used to generate the random matrix
# 
# matrix = []
# 20.times do
#   row = []
#   20.times do
#     if rand(40) == 0
#       row.push(0)
#     else
#       row.push(1)
#     end
#   end
#   matrix.push(row)
# end
# 
# puts matrix.collect{|row| row.join(" ")}.join("\n")

