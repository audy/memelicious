require 'spec_helper'

Memetron::Meme.descendants.each do |meme|
  test_meme meme
end
