require 'byebug'

def encrypt(text)
  # 1. Define an array with the 26 letters of the alphabet (in capital letters)
  alphabet = ('A'..'Z').to_a
  # 2. Split the text in a `letters` array
  letters = text.upcase.chars
  # 3. Iterate over letters, for each letter, test its inclusion in the alphabet
  encrypted = letters.map do |letter|
    index = alphabet.index(letter)
    index.nil? ? letter : alphabet[index - 3]
  end
  # 4. Map the letter to its left-shift or to itself
  # 5. Join the mapped array and return it
  encrypted.join
end

p encrypt("ABC")
