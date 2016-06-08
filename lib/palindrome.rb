# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.

def palindrome?(str)
  str.reverse == str
end

def longest_palindrome(str)
  return str if palindrome? str

  max_len = str.length - 1
  while max_len > 0
    i = 0
    while (i + max_len) <= str.length
      return str[i, max_len] if palindrome? str[i, max_len]
      i += 1
    end

    max_len -= 1
  end
end
