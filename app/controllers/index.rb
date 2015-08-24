require_relative '../models/word'

get '/' do
  # Look in app/views/index.erb
  if @output.nil?
    @output = []
  end
  erb :index
end

post '/find' do
  input = params[:user_input]
  word = Word.find_by(name: input + "\n")
  unless word.nil?
    @output = word.anagrams
  else
    @output = "The word is not in the dictionary"
  end

  erb :index
end

get '/result' do
  erb :result
end