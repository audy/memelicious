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

    # Return variable regions of meme
    def parse(meme, string)
      MEMES[meme].match(string).to_a[1..-1]
    end
    
    # Match and parse a meme
    #=> [:meme_name, ['parsed', 'meme', 'bits']]
    def match_and_parse(string)
      meme = match(string)
      if meme.nil?
        return meme
      end
      bits = parse(meme, string)
      [meme, bits]
    end

    private

    def meme_name(meme_pair)
      meme_pair[0]
    end
  end
end
