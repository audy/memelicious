require 'spec_helper'

describe Memetron::Matcher do
  it 'should match a meme' do
    Memetron::Matcher.match('a wild test case appears').should == [Memetron::Pokemon, 'test case']
  end
end
