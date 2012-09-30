require 'memetron/meme'
require 'memetron/matcher'

# require memes
Dir.glob(File.join(File.dirname(__FILE__), 'memetron', 'memes', '*.rb')).each { |x| require x }
