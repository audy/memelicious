module Memetron
  class Matcher
    class << self
      def match(string)
        Memetron::Meme.memes.map do |meme|
          matches = Array.new
          meme.match(string)
        end
      end
    end
  end
end
