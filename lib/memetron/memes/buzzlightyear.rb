module Memetron
  class BuzzLightyear < Meme
    matcher /(.*)[,\.\n\s](.*) everywhere/i

    should_match "regular expressions. regular expressions everywhere"
    and_return ['regular expressions', 'regular expressions']

    should_match "regular expressions, regular expressions everywhere"
    should_match "regular expressions\nregular expressions everywhere"
  end
end
