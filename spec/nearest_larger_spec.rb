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

require 'nearest_larger'

describe 'nearest_larger' do
  it 'handles a simple case to the right' do
    expect(nearest_larger([2, 3, 4, 8], 2)).to eq(3)
  end

  it 'handles a simple case to the left' do
    expect(nearest_larger([2, 8, 4, 3], 2)).to eq(1)
  end

  it 'treats any two larger numbers like a tie' do
    expect(nearest_larger([2, 6, 4, 8], 2)).to eq(1)
  end

  it 'should choose the left case in a tie' do
    expect(nearest_larger([2, 6, 4, 6], 2)).to eq(1)
  end

  it 'finds an answer with a distance greater than 1 to the left' do
    expect(nearest_larger([8, 2, 4, 3], 2)).to eq(0)
  end

  it 'finds an answer with a distance greater than 1 to the right' do
    expect(nearest_larger([2, 4, 3, 8], 1)).to eq(3)
  end

  it 'should return nil if no larger number is found' do
    expect(nearest_larger([2, 6, 4, 8], 3)).to eq(nil)
  end

  it 'should return the nearer of 2 greater numbers' do
    expect(nearest_larger([2, 6, 9, 4, 8], 3)).to eq(2)
  end
end
