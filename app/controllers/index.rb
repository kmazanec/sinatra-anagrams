get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do
  "Show a list of anagrams for word \"#{params[:word]}\""
end
