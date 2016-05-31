# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)

def bubble_sort(arr)
  return arr if arr.length < 2

  sorted = false
  until sorted do
    sorted = true
    i = 1
    while i < arr.length do
      if arr[i-1] > arr[i]
        sorted = false
        arr[i-1], arr[i] = arr[i], arr[i-1]
      end

      i += 1
    end
  end

  arr
end
