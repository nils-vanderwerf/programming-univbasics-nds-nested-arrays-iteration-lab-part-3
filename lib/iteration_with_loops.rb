
mixed_data = [
  ["The", 4, "quick"],
  [-1, "brown", "fox", 30],
  ["studied", 101, 233, "Ruby"]
]

def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  row_index = 0
  sentence = []
  while row_index < src.count do 
    element_index = 0
    while element_index < src[row_index].count do
      if src[row_index][element_index].class == String
        sentence << src[row_index][element_index]
      end
      element_index += 1
    end
    row_index += 1
  end
  sentence.join(" ")
end

puts join_nested_strings(mixed_data)