require 'spec_helper'

describe Memetron::Matcher do
  let (:meme) do

    module Memetron
      class TestMeme
        matcher /this is a test of the (.*) meme system/i
        should_match 'this is a test of the test meme system'
        and_return 'test'
      end
    end

  end

  it 'should match a meme' do
    Memetron::Matcher.match('this is a test of the meme system').should_not be_nil
  end
end
