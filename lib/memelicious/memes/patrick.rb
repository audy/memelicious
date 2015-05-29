module Memelicious
  class Patrick < Meme
    matcher /let'?s take all the (.*) and (.*)/

    should_match 'lets take all the memes and encode them as regular expressions'
    and_return ['memes', 'encode them as regular expressions']
  end
end
