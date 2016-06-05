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

  i = 2
  while i <= Math.sqrt(num)
    if i.even? && i > 2
      i += 1
      next
    end

    return false if num % i == 0

    i += 1
  end

  true
end

def nth_prime(num)
  i = 1
  checked = 0

  while checked < num
    i += 1

    checked += 1 if prime? i
  end

  i
end
