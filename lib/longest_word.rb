# Write a method that takes in a string. Return the longest word in
# the string.

def longest_word(str)
  words = str.split(' ')
  longest = ''

  return words[0] if words.length == 1

  words.map! { |w| w.gsub(/\W+/, '') }
  words.each { |w| longest = w if w.length > longest.length }

  longest
end
