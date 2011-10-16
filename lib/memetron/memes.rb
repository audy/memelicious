module Memetron
  MEMES = {
    # "a wild ruby library appears"
    :pokemon => /a wild (.+) appears/i,

    # "I don't always write regexp but when I do they break"
    :dos_equis => /I don'?t always (.+) but when I do (.+)/i,

    # "North Korea is best Korea"
    :is_best => /(\w+\b) (\w+\b) is best (\w+\b)/i,

    # Yo dawg I heard you like regexp so I put a regexp in your regexp so you can blah
    :yo_dawg => /yo dawg I hea?rd you like (.+) so I put a (.+) in your (.+) so you can (.+) while you (.+)/i,

    # cant tell if this project is going to go anywhere or just end up on the bottom of my github profile
    # not sure if blah or blah
    :fry => /(can'?t tell|not sure) if (.+) or (.+)/i,

    # lets take all the memes and put them over here
    :patrick => /let'?s take all the (.+) and put them over here/i,

    # "soon" or "soon." or "soon..."
    :soon => /^soon(\.|\.{3})?$/i,

    # Y U NO DO THIS?
    :y_u_no? => /(.*)Y U NO (.+)\?/i,
  }
end
