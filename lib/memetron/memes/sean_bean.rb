module Memetron
  class SeanBean < Meme
    matcher /Prepare yourself,? (.*) are coming/i

    should_match "prepare yourself, the automatically generated memes are coming"
    and_return "the automatically generated memes"
  end
end
