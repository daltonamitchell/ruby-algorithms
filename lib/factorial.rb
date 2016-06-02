# Return the factorial of the provided integer. If the integer is represented
# with the letter n, a factorial is the product of all positive integers less
# than or equal to n.
#
# Factorials are often represented with the shorthand notation n!
#
# For example: 5! = 1 * 2 * 3 * 4 * 5 = 120

def factorial(num)
  return 1 if num == 0
  return num if num < 3

  output = 1
  i = 2
  while i <= num
    output *= i
    i += 1
  end

  output
end
