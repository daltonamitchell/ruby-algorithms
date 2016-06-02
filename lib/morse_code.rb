# Build a function, `morse_encode(str)` that takes in a string (no
# numbers or punctuation) and outputs the morse code for it.
#
# See http://en.wikipedia.org/wiki/Morse_code.
#
# Put two spaces between words and one space between letters.

MORSE_CODE = {
  a: '.-',
  b: '-...',
  c: '-.-.',
  d: '-..',
  e: '.',
  f: '..-.',
  g: '--.',
  h: '....',
  i: '..',
  j: '.---',
  k: '-.-',
  l: '.-..',
  m: '--',
  n: '-.',
  o: '---',
  p: '.--.',
  q: '--.-',
  r: '.-.',
  s: '...',
  t: '-',
  u: '..-',
  v: '...-',
  w: '.--',
  x: '-..-',
  y: '-.--',
  z: '--..'
}.freeze

def morse_encode(str)
  return MORSE_CODE[str.to_sym] if str.length == 1

  words = str.split ' '
  words.map! { |w| morse_encode_word(w) }
  words.join '  '
end

def morse_encode_word(word)
  letters = word.split ''
  letters.map! { |l| MORSE_CODE[l.to_sym] }
  letters.join ' '
end
