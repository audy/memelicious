module Memelicious
  class YoDawg < Meme
    matcher /yo dawg I hea?rd you like (.*) so I put a (.*) in your (.*) so you can (.*) while you (.*)/i

    should_match 'yo dawg I heard you like X so I put a X in your X so you can X while you X'
    and_return %w{X X X X X}
  end
end
