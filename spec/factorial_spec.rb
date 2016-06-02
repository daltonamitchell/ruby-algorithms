# Return the factorial of the provided integer. If the integer is represented
# with the letter n, a factorial is the product of all positive integers less
# than or equal to n.
#
# Factorials are often represented with the shorthand notation n!
#
# For example: 5! = 1 * 2 * 3 * 4 * 5 = 120

require 'factorial'

describe 'factorial' do
  it 'returns 1 for 0' do
    expect(factorial(0)).to eq(1)
  end

  it 'returns the input for 1 or 2' do
    expect(factorial(1)).to eq(1)
    expect(factorial(2)).to eq(2)
  end

  it 'returns 24 for 4' do
    expect(factorial(4)).to eq(24)
  end

  it 'returns 3,628,800 for 10' do
    expect(factorial(10)).to eq(3_628_800)
  end

  it 'returns 2,432,902,008,176,640,000 for 20' do
    expect(factorial(20)).to eq(2_432_902_008_176_640_000)
  end
end
