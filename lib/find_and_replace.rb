require('pry')

class String
  define_method(:find_and_replace) do |new, old|
    self.gsub(new, old)
  #  Solution1
  #   downcase!()
  #   final_words = []
  #   words = self.split()
  #   words.each() do |word|
  #     if word == new
  #       final_words.push(old)
  #     else
  #       final_words.push(word)
  #     end
  #   end
  #   final_words.join(" ")
  # end
  end
end
