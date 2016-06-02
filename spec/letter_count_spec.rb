# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.

require 'letter_count'

describe 'letter_count' do
  it 'handles a simple case' do
    expected = { c: 1, a: 1, t: 1 }

    expect(letter_count('cat')).to eq(expected)
  end

  it 'handles multiples of the same letter' do
    expected = { m: 1, o: 2, n: 1 }

    expect(letter_count('moon')).to eq(expected)
  end

  it 'handles a multi-word case' do
    expected = {
      c: 1,
      a: 2,
      t: 1,
      s: 1,
      r: 1,
      e: 1,
      f: 1,
      u: 1,
      n: 1
    }

    expect(letter_count('cats are fun')).to eq(expected)
  end
end
