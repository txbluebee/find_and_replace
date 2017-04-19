require('pry')

class String
  define_method(:find_replace) do
    downcase()
    words_to_be_replace = {
      "hello" => "hi",
      "world" => "earth",
      "cat" => "dog",
      "dog" => "cat"
    }
    final_words = []
    words = self.split()
    words.each() do |word|
      if words_to_be_replace.include?(word)
        final_words.push(words_to_be_replace.fetch(word))
      else
        final_words.push(word)
      end
    end
    final_words.join(" ")
  end
end
