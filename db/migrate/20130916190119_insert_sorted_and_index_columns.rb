class InsertSortedAndIndexColumns < ActiveRecord::Migration
  def up
    add_column :words, :sorted_string, :string
    Word.all.each do |word|
      word.sorted_string = word.sort_chars
      word.save
    end
    add_index :words, :sorted_string
  end

  def down
    remove_column :words, :sorted_string
  end
end
