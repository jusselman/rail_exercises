# Write a method `abbreviate_sentence` that takes in a sentence string and returns a new sentence where every word longer 
# than 4 characters has all of it's vowels removed.

def abbreviate_sentence(sent)
  words = sent.split(" ")
  new_words = []

  words.each do |word|

  if word.length > 4
    new_word = abbreviate_it(word)
    new_words << new_word
  else 
    new_words << word


  end
  
end

  new_sent = new_words.join(" ")
end  

# abbreviate_it("bootcamp")

 def abbreviate_it(word)

  vowels = "aeiou"
  vowelless = ""

  word.each_char do |char|
    if !vowels.include?(char)
      vowelless += char
    end
  end

  return vowelless
end

puts abbreviate_it("These")
puts abbreviate_sentence("These vowels needn't leave")

