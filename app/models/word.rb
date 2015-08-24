class Word < ActiveRecord::Base
  def anagrams
    anagrams_array = []
    match = self.name.downcase.strip.split("").sort.join
    Word.all.each do |word|
      if (word.name.downcase.strip.split("").sort.join == match)
        anagrams_array << word.name.strip
      end
    end
    anagrams_array
  end
end