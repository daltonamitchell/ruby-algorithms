# Build a function, `morse_encode(str)` that takes in a string (no
# numbers or punctuation) and outputs the morse code for it.
#
# See http://en.wikipedia.org/wiki/Morse_code.
#
# Put two spaces between words and one space between letters.

require 'morse_code'

describe 'morse_code' do
  it 'encodes a simple letter' do
    expect(morse_encode('q')).to eq('--.-')
  end

  it 'encodes a small word' do
    expect(morse_encode('cat')).to eq('-.-. .- -')
  end

  it 'encodes a phrase' do
    expect(morse_encode('cat in hat')).to eq('-.-. .- -  .. -.  .... .- -')
  end
end
