module Memetron
  class DarthVader < Meme
    matcher /I find your lack of (.*) disturbing/i

    should_match "I find your lack of tests disturbing"
    and_return "tests"
  end
end
