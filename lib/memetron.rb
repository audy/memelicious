require 'bundler'
Bundler.require

require 'memetron/meme'

# require all the memes!
Dir.glob(File.join(File.dirname(__FILE__), 'memetron', 'memes', '*.rb')).each { |x| require x }

require 'memetron/matcher'
