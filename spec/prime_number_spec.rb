# Prime?
#
# Write a method that takes in an integer (greater than one) and
# returns true if it is prime otherwise return false.
#
# nth Prime
#
# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.

require 'prime_number'

describe 'prime?' do
  it 'returns false for 1' do
    expect(prime?(1)).to be(false)
  end

  it 'returns true for 2 or 3' do
    expect(prime?(2)).to be(true)
    expect(prime?(3)).to be(true)
  end

  it 'handles_other_examples' do
    expect(prime?(4)).to be(false)
    expect(prime?(9)).to be(false)
    expect(prime?(17)).to be(true)
    expect(prime?(100)).to be(false)
  end
end

describe 'nth_prime' do
  it 'finds the 1st prime number' do
    expect(nth_prime(1)).to eq(2)
  end

  it 'finds the 2nd prime number' do
    expect(nth_prime(2)).to eq(3)
  end

  it 'finds prime numbers 3 thru 5' do
    expect(nth_prime(3)).to eq(5)
    expect(nth_prime(4)).to eq(7)
    expect(nth_prime(5)).to eq(11)
  end
end
