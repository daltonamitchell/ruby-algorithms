# Write a program that prints the numbers from 1 to 100. But for multiples of
# three print "Fizz" instead of the number and for the multiples of five print
# "Buzz". For multiples of both three and five print "FizzBuzz".
#
# Your method should optionally take `start` and `end` parameters which add the
# following functionality:
#
# start: outputs items from `start` to 100
# stop: outputs items from 0 to `end`
# start, stop: output items from `start` to `end` inclusive
#
# Of course with no parameters, just output 1 to 100

require 'fizz_buzz'

describe 'fizz_buzz' do
  it 'returns an array' do
    expect(fizz_buzz).to be_a(Array)
  end

  context 'when no parameters are given' do
    it 'outputs 100 items' do
      expect(fizz_buzz.length).to eq(100)
    end

    it 'outputs "Fizz" as the third item' do
      expected = 'Fizz'
      actual = fizz_buzz
      expect(actual[2]).to eq(expected)
    end

    it 'outputs "Buzz" as the 5th item' do
      expected = 'Buzz'
      actual = fizz_buzz
      expect(actual[4]).to eq(expected)
    end

    it 'outputs "FizzBuzz" as the 15th item' do
      expected = 'FizzBuzz'
      actual = fizz_buzz
      expect(actual[14]).to eq(expected)
    end

    it 'outputs "Fizz" for every third item' do
      fb = fizz_buzz
      thirds = fb.select.with_index(1) { |_, i| (i % 15 != 0) && (i % 3 == 0) }
      actual = thirds.all? { |item| item == 'Fizz' }
      expect(actual).to eq(true)
    end

    it 'outputs "Buzz" for every fifth item' do
      fb = fizz_buzz
      fifths = fb.select.with_index(1) { |_, i| (i % 15 != 0) && (i % 5 == 0) }
      actual = fifths.all? { |item| item == 'Buzz' }
      expect(actual).to eq(true)
    end

    it 'outputs "FizzBuzz" for every fifteenth item' do
      fb = fizz_buzz
      fifteenths = fb.select.with_index(1) { |_, i| (i % 15 == 0) }
      actual = fifteenths.all? { |item| item == 'FizzBuzz' }
      expect(actual).to eq(true)
    end
  end

  context 'when the :start parameter is given' do
    it 'returns 50 items when starting from 51' do
      actual = fizz_buzz start: 51
      expect(actual.length).to eq(50)
    end

    it 'returns the last 10 items' do
      expected = [91, 92, 'Fizz', 94, 'Buzz', 'Fizz', 97, 98, 'Fizz', 'Buzz']
      actual = fizz_buzz start: 91
      expect(expected).to eq(actual)
    end

    it 'can count before 1' do
      actual = fizz_buzz start: -5
      expected = ['Buzz', -4, 'Fizz', -2, -1]
      expect(actual.length).to eq(106)
      expect(actual.slice(0, 5)).to eq(expected)
    end
  end

  context 'when the :stop parameter is given' do
    it 'can only count to 10' do
      actual = fizz_buzz stop: 10
      expect(actual.length).to eq(10)
    end

    it 'can count past 100' do
      expected = [101, 'Fizz', 103, 104, 'FizzBuzz']
      actual = fizz_buzz stop: 105
      expect(actual.length).to eq(105)
      expect(actual[100, 5]).to eq(expected)
    end
  end

  context 'when both :start and :stop are given' do
    it 'can still count from 1 to 100' do
      expected = fizz_buzz
      actual = fizz_buzz start: 1, stop: 100
      expect(actual).to eq(expected)
    end

    it 'can return only one item' do
      expected = ['FizzBuzz']
      actual = fizz_buzz start: 15, stop: 15
      expect(actual).to eq(expected)
    end

    it 'correctly returns a range' do
      expected = ['Buzz', 'Fizz', 37, 38, 'Fizz',
                  'Buzz', 41, 'Fizz', 43, 44, 'FizzBuzz']
      actual = fizz_buzz start: 35, stop: 45
      expect(actual).to eq(expected)
    end

    it 'can return a range outside than the default' do
      actual = fizz_buzz start: -5, stop: 105
      expect(actual.length).to eq(111)
    end
  end
end
