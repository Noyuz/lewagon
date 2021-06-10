def acronymize(sentence)
  words = sentence.split(" ")
  first_letters = []
  words.each do |word|
    first_letters << word[0]
  end
  first_letters.join.upcase
end

puts acronymize("Frequently Asked Questions") == "FAQ"
puts acronymize("") == ""
puts acronymize("AWAY FROM KEYBOARD") == "AFK"
puts acronymize("working from home") == "WFH"


# 1. Split the sentence into words
# 2. Initialize an empty array A
# 3. Iterate over words, for each word, select the first letter (how?)
#    and store it in A
# 4. Join elements of A, uppercase it and return it


# NEW ACRONYMIZE

def acronymize(sentence)
  words = sentence.split(" ")
  letters = words.map do |word|
    word[0]
  end
  letters.join.upcase
  # 1. Split the sentence into words
  # 2. Map words to their first letter (how?)
  # 3. Join elements of the mapped array, uppercase it and return it
end
