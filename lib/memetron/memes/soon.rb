module Memetron
  class Soon < Meme
    matcher /^soon(\.|\.{3})?$/i

    should_match "soon"
    should_match "soon."
    should_match "soon..."
  end
end
