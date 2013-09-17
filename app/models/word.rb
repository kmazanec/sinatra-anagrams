class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams(user_word)

    # Version 2

    user_sorted_word = user_word.downcase.split('').sort.join('')
    Word.where("sorted_string = '#{user_sorted_word}'" ).map { |word| word.entry }

    # Version 1

    # Word.all.each do |current_word|
    #   current_word_array = current_word.entry.downcase.split('').sort
    #   if current_word_array == user_sorted_word_array
    #     puts current_word.entry + " " + current_word_array.inspect
    #     anagrams_matches << current_word.entry
    #   end
    # end
  end

  def sort_chars
    entry.downcase.split('').sort.join('')
  end

end
