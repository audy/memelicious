require 'spec_helper'

describe Memetron::Matcher do
  it 'should match a meme' do
    expect(Memetron::Matcher.match('a wild test case appears')).to eq([Memetron::Pokemon, 'test case'])
  end

  it 'has a method [] which also matches a meme' do
    expect(Memetron::Matcher['a wild test case appears']).to eq ([Memetron::Pokemon, 'test case'])
  end

  it 'should return nil for a non-existant meme' do
    expect(Memetron::Matcher['1234']).to eq(nil)
  end
end
