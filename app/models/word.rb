class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams(user_word)
    # return the list of words
    counter = 1
    user_sorted_word_array = user_word.downcase.split('').sort
    anagrams_matches = []

    while counter <= Word.count
      current_word = Word.find(counter).entry
      current_word_array = current_word.downcase.split('').sort
      if current_word_array == user_sorted_word_array
        anagrams_matches << current_word
      end
      counter += 1
    end

    anagrams_matches
  end

end
