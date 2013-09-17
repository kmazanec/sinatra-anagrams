get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  # "Show a list of anagrams for word \"#{params[:user_input]}\""
  redirect to("/#{params[:user_input]}")
end

get '/:word' do
  @prev_word = params[:word]
  @words = Word.anagrams(params[:word])
  # puts @words + " @words"
  # puts params[:word] + " params[:word]"
  erb :index
end
