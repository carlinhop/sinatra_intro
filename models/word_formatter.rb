class WordFormatter

  def self.upcase(word)
    return word.upcase
  end

  def self.camelcase(word)
    result = ""
    word_array = word.split(" ")
    word_array.map{ |word| result += word.capitalize}
    return result
  end

end