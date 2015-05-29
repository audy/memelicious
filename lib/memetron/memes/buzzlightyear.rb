module Memetron
  class BuzzLightyear < Meme
    matcher /(?<string>.*)[,\.\n\s](\s*)\k<string> everywhere/i

    should_match "regular expressions. regular expressions everywhere"
    and_return 'regular expressions'

    should_match "regular expressions, regular expressions everywhere"
    and_return 'regular expressions'

    should_match "regular expressions\nregular expressions everywhere"
    and_return 'regular expressions'

    should_not_match "regular expressions, sandwiches everywhere"
  end
end
