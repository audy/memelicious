require 'spec_helper'

Memetron::Meme.memes.each do |meme|
  test_meme meme
end
