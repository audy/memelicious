module Memelicious
  class DosEquis < Meme
    matcher /I don'?t always (.*) but when I do (.*)/i

    should_match "I don't always write ruby libraries but when I do they're stupid"
    and_return ["write ruby libraries", "they're stupid"]
  end
end
