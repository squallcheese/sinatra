require_relative '../config/environment.rb'
require_relative '../config/database.rb'
require_relative '../app/models/word'


words = Word.find_by(name: "Zythia\n")