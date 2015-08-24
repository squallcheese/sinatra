require_relative "../app/models/word"

dictionary = File.open("db/words", "r")

dictionary.each do |word|
  Word.create(name: word)
end