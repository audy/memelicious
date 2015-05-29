require 'spec_helper'

describe Memelicious::Matcher do
  it 'should match a meme' do
    expect(Memelicious::Matcher.match('a wild test case appears')).to eq([Memelicious::Pokemon, 'test case'])
  end

  it 'has a method [] which also matches a meme' do
    expect(Memelicious::Matcher['a wild test case appears']).to eq ([Memelicious::Pokemon, 'test case'])
  end

  it 'should return nil for a non-existant meme' do
    expect(Memelicious::Matcher['1234']).to eq(nil)
  end
end
