module Memetron
  class YUNo < Meme
    matcher /Y U No (.+)\?/i

    should_match 'y u no write test generators instead of writing all rspecs manually?'
    and_return 'write test generators instead of writing all rspecs manually'

  end
end
