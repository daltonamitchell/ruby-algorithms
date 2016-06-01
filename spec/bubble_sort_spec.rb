# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)

require 'bubble_sort'

describe '#bubble_sort' do
  it 'works with an empty array' do
    expect(bubble_sort([])).to eq([])
  end

  it 'works with an array of 1 item' do
    expect(bubble_sort([1])).to eq([1])
  end

  it 'sorts a small array of numbers' do
    arr = [5, 4, 3, 2, 1]
    expected = [1, 2, 3, 4, 5]
    expect(bubble_sort(arr)).to eq(expected)
  end

  it 'sorts a larger array' do
    arr = [9, 10, 3, 1, 4, 17, 23, 12, 25, 6]
    expected = [1, 3, 4, 6, 9, 10, 12, 17, 23, 25]
    expect(bubble_sort(arr)).to eq(expected)
  end
end
