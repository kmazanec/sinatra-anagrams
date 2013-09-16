word_array = []

File.foreach("words") do |word| 
  word_array << word.chomp
end

word_array.each { |word| Word.create(entry: word) }
