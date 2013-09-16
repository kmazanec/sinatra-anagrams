class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams(user_word)

    user_sorted_word_array = user_word.downcase.split('').sort
    puts user_sorted_word_array

    anagrams_matches = []
    Word.all.each do |current_word|
      current_word_array = current_word.entry.downcase.split('').sort
      if current_word_array == user_sorted_word_array
        puts current_word.entry + " " + current_word_array.inspect
        anagrams_matches << current_word.entry
      end
    end
    anagrams_matches
  end

end
