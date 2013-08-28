helpers do

  def anagrams_for(word)
    Word.where("canonical = ?", word)
  end

  def canonical(word)
    word.downcase.split('').sort.join
  end

end