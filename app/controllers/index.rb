require_relative '../models/word'

get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/find' do
  input = params[:user_input]
  word = Word.find_by(name: input + "\n")
  @output = word.anagrams
end