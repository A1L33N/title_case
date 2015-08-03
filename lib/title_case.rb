class String
  prepositions = ["a", "and", "the", "with", "of", "from", "is"]
  define_method(:title_case) do
    split_title = self.split()
    split_title.each() do |word|
      word.capitalize!()
      if prepositions.include?(word.downcase())
        word.downcase!()
      end
      split_title[0].capitalize!()
    end
    split_title.join(" ")
  end
end
