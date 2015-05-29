module Memelicious

  ##
  # This class is inherited by memes and used to do the following
  #
  # - Define the meme using a regular expression
  # - Define what the meme should match
  # - Define what the meme should not match
  # - Define what the meme should return
  #
  class Meme

    class << self

    attr_accessor :positive_examples
    attr_accessor :negative_examples

    def matcher(matcher)
      @matcher_regexp = matcher
    end

    # this method defines what a meme should match
    def should_match(example)
      @positive_examples ||= Hash.new { |h, k| h[k] = nil }
      @positive_examples[example] = nil
      @last_added = example
    end

    # this method defines what a meme should not match
    def should_not_match(example)
      @negative_examples ||= Array.new
      @negative_examples << example
    end

    # this method defines what a meme should return
    # use after calling Meme#should_match
    #
    # For example
    #
    # should_match /this meme should match the following (.*)/
    # and return "what is captured by (.*)
    def and_return(example)
      @positive_examples[@last_added] = example
    end

    def memes
      ObjectSpace.each_object(Class).select { |klass| klass < self }
    end

    # try to match string using @matcher_regexp
    # return false if not matched
    # return true if matched
    # return match if matched and it should return something
    def match(string)
      match = @matcher_regexp.match(string)
      if match.class == MatchData
        if match.nil?
          nil
        else
          caps = match.captures
          if caps.length == 1
            if caps.first.nil?
              true
            else
              caps.first
            end
          else
            caps
          end
        end
      else
        false
      end
    end

  end
  end # class << self
end
