module Memetron
  MEMES = {
    # "a wild ruby library appears"
    :pokemon => /a wild (.+) appears/i,

    # "I don't always write regexp but when I do they break"
    :dos_equis => /I don'?t always (.+) but when I do (.+)/i,

    # "North Korea is best Korea"
    :is_best => /(\w+\b) (\w+\b) is best (\w+\b)/i,

    # Yo dawg I heard you like regular expressions so I put a regular expression in your regular expression so you can match patterns while you match patterns
    :yo_dawg => /yo dawg I hea?rd you like (.*) so I put a (.*) in your (.*) so you can (.*) while you (.*)/i,

    # cant tell/not sure if this project is going to go anywhere or just end up on the bottom of my github profile
    :fry => /(can'?t tell|not sure) if (.+) or (.+)/i,

    # lets take all the memes and create regular expressions for them
    :patrick => /let'?s take all the (.+) and put them over here/i,

    # "soon" or "soon." or "soon..."
    :soon => /^soon(\.|\.{3})?$/i,

    # Y U NO WRITE TEST GENERATORS INSTEAD OF WRITING ALL THE RSPECS MANUALLY?
    :y_u_no? => /(.*)Y U NO (.+)\?/i,

    # I was into the concept of memes before it became an internet phenomenon about cats
    :hipster_kitty => /I liked (.*) before (.*)/i,

    # Out of beer; better drink my own piss.
    :bear_grylls => /(.*) better drink my own piss/i,

    # I can haz regular expressions?
    :i_can_haz => /I can ha[zs] (.*)/i,

    # Jimmy McMillan is too damn high!
    :jimmy_mcmillan => /(.*) is too damn high!/i,
    
    # I find your lack of tests disturbing
    :darth_vader => /I find your lack of (.*) disturbing/i,
    
    # Prepare yourself, the procedurally generated memes are coming
    :sean_bean => /Prepare yourself,? the (.*) are coming/i,
  }
end
