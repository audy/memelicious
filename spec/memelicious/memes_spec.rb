require 'spec_helper'

Memelicious::Meme.memes.each do |meme|
  test_meme meme
end
