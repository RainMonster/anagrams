get '/' do
  erb :index
end

get '/:word' do
  @word = params[:word]
  word_canonical = canonical(params[:word])
  @anagrams = anagrams_for(word_canonical)

  erb :mypartial
end