def arrayEquals(a, b)
  # if the lengths aren't the same, they can't be equal
  return false if a.length != b.length
  # loop through each index and check that the values are equal
  a.length.times do |i|
    # if there's a non-match, they aren't equal
    return false if a[i] != b[i]
  end
  # if looped through all without finding a mismatch,
  # then the arrays are equal
  return true
end
