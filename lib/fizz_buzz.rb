
def fizz_buzz(start: 1, stop: 100)
  (start..stop).to_a.map do |n|
    next 'FizzBuzz' if n % 15 == 0
    next 'Fizz' if n % 3 == 0
    next 'Buzz' if n % 5 == 0

    n
  end
end
