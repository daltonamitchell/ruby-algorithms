# Prime?
#
# Write a method that takes in an integer (greater than one) and
# returns true if it is prime otherwise return false.
#
# nth Prime
#
# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.

def prime?(num)
  return false if num == 1

  return true if num < 4

  i = 1
  while i <= Math.sqrt(num)
    i += 1
    next if even_above_two(i)

    return false if num % i == 0
  end

  true
end

def nth_prime(num)
  i = 1
  checked = 0

  while checked < num
    i += 1
    next if even_above_two(i)

    checked += 1 if prime? i
  end

  i
end

def even_above_two(num)
  num.even? && num > 2
end
