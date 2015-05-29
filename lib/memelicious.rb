require 'bundler'
Bundler.require

require 'memelicious/meme'

# require all the memes!
Dir.glob(File.join(File.dirname(__FILE__), 'memelicious', 'memes', '*.rb')).each { |x| require x }

require 'memelicious/matcher'
