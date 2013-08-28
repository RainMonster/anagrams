words_file = 'db/words.txt'

my_words_array = File.readlines(words_file)

def canonical(word)
  word.downcase.split('').sort.join
end

my_words_array.each do |word|
  Word.create(word: word.chomp, canonical: canonical(word.chomp))
end

