require 'spec_helper'

describe Memetron::Matcher do
  it 'should match a meme' do
    Memetron::Matcher.match('a wild test case appears').should == [Memetron::Pokemon, 'test case']
  end

  it 'has a method [] which also matches a meme' do
    Memetron::Matcher['a wild test case appears'].should == [Memetron::Pokemon, 'test case']
  end

  it 'should return nil for a non-existant meme' do
    Memetron::Matcher['1234'].should be_nil
  end
end
