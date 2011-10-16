require File.join(File.dirname(__FILE__), 'memes')

module Memetron
  class Matcher
    # Attempt to identify the meme in a string.
    def match(string)
      first_match = MEMES.detect { |meme, regexp| string =~ regexp }
      if first_match.nil?
        nil
      else
        meme_name(first_match)
      end
    end

    def meme_name(meme_pair)
      meme_pair[0]
    end
  end
end
