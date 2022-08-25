require 'pry'

# Your code goes here!
class Anagram

  attr_reader :word
  attr_reader :match

  def initialize(word)
    @word=word
  end

  def match(list)
    # Breaks out the initial word into an array to see
    # all of it's letters 
    initial_word_letter_array = @word.split("").sort
    
    # binding.pry
    
    # Now, after we input an array of strings, we're going
    # to figure out one by one if that word is an anagram
    match = list.filter do |item|
      # First, we're going to split out the word into letters
      # and sort
      item_letter_array = item.split("").sort
      # Next and finally, we're going to figure out if those
      # letters are the same
      initial_word_letter_array == item_letter_array
      
      # binding.pry
    end
    
  end

end

# binding.pry