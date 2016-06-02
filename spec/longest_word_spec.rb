# Write a method that takes in a string. Return the longest word in
# the string.

require 'longest_word'

describe 'longest_word' do
  it 'handles a simple string' do
    expect(longest_word('short longest')).to eq('longest')
  end

  it 'handles only one word' do
    expect(longest_word('one')).to eq('one')
  end

  it 'handles many words' do
    expect(longest_word('is the loneliest number')).to eq('loneliest')
  end

  it 'handles punctuation' do
    expect(longest_word('Hi there, how are you?')).to eq('there')
  end

  it 'returns the first longest if more than one' do
    expect(longest_word('Four score and seven years ago...')).to eq('score')
  end
end
