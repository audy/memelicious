module Memelicious
  class Soon < Meme
    matcher /^soon(\.|\.{3})?$/i

    should_match "soon"
    and_return true
    should_match "soon."
    and_return '.'
    should_match "soon..."
    and_return '...'
  end
end
