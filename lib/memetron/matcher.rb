module Memetron
  class Matcher
    class << self

    def match(string)
      Memetron::Meme.memes.each do |meme|
        match = meme.match(string)
        if match
          return [meme, match]
        end
      end
    end

    end
  end
end
