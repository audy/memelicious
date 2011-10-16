require './memes'

class Memetron
  # Attempt to identify the meme in a string.
  def match(string)
    first_match = Memes::MEMES.detect { |meme, regexp| string =~ regexp }
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
