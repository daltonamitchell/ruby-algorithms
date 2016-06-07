# Write a program that prints the numbers from 1 to 100. But for multiples of
# three print "Fizz" instead of the number and for the multiples of five print
# "Buzz". For multiples of both three and five print "FizzBuzz".
#
# Your method should optionally take `start` and `stop` parameters which add the
# following functionality:
#
# start: outputs items from `start` to 100
# stop: outputs items from 1 to `stop`
# start, stop: output items from `start` to `stop` inclusive
#
# Of course with no parameters, just output 1 to 100

def fizz_buzz(start: 1, stop: 100)
  (start..stop).to_a.map do |n|
    next 'FizzBuzz' if n % 15 == 0
    next 'Fizz' if n % 3 == 0
    next 'Buzz' if n % 5 == 0

    n
  end
end
