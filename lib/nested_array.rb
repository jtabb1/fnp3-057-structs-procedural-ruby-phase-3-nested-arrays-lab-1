# Examples inspired by U. S. National Organic Standards

ORGANIC_PRODUCE = [
  "Strawberries",
  "Potatoes",
  "Grapes",
  "Avocadoes",
  "Asparagus"
]

CONVENTIONAL_PRODUCE = [
  "Grapefruit",
  "Pineapple",
  "Oranges",
  "Watermelon",
  "Eggplant"
]

#
# Illustration of array pass by reference
#

MA = ORGANIC_PRODUCE
MB = CONVENTIONAL_PRODUCE

def assembled_matrix
  # Build an array that contains both of the above arrays
  # This matrix will represent a produce storage room
  # Organic standards require that organic products be stored ABOVE conventional, not the other way around
  # Make sure conventional produce is first, on the 'zeroth' / 'bottom' shelf
  [MB, MA]
end
puts assembled_matrix.inspect

def sorted_matrix
  # Using Array literal syntax only, build another nested array that 
  # uses the arrays of conventional and organic produce as before.
  # However, this time, sort each internal array alphabetically by the first character
  [MB.sort{|a,b| a[0] <=> b[0]}, MA.sort{|a,b| a[0] <=> b[0]}]
end
puts sorted_matrix.inspect

def matrix_lookup(matrix, row, column)
  # Given any matrix (array of arrays), a row index and a column index, 
  # Return the matrix's content at that row and and column
  matrix[row][column]
end
puts matrix_lookup(assembled_matrix,1,2)

def matrix_update(matrix, row, column, new_value)
  # Given any matrix (array of arrays), a row index and a column index, 
  # Update the matrix location at that row and column to have the value of new_value
  # Return the updated matrix
  matrix[row][column] = new_value
  matrix
end
puts matrix_update(assembled_matrix,0,1,'x').inspect
puts matrix_update(assembled_matrix,1,2,'y').inspect
puts MB.inspect
puts MA.inspect
puts CONVENTIONAL_PRODUCE.inspect
puts ORGANIC_PRODUCE.inspect
