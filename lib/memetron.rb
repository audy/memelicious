require 'memetron/meme'

# require memes
Dir.glob(File.join(File.dirname(__FILE__), 'memetron', 'memes', '*.rb')).each { |x| require x }
