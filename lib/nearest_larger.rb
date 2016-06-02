# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.

def nearest_larger(arr, i)
  distance = 1

  loop do
    left = i - distance
    right = i + distance

    return nil if (left < 0) && (right > arr.length)
    return left if (left >= 0) && (arr[left] > arr[i])
    return right if (right < arr.length) && (arr[right] > arr[i])

    distance += 1
  end
end
