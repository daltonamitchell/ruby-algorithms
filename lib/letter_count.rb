# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.

def letter_count(str)
  counts = Hash.new 0
  letters = str.split ''

  letters.each do |l|
    counts[l.to_sym] += 1 unless l == ' '
  end

  counts
end
