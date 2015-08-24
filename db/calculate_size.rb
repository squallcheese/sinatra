require_relative "../config/environment"
require_relative "../config/database"
require_relative "../app/models/word"

Word.all.each do |word|
  word.size = word.name.size
  word.save
end