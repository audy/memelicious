$LOAD_PATH << File.join(File.dirname(__FILE__), "lib")

require 'bundler'
Bundler.require :test

require 'memetron'

def test_meme(meme)

  describe meme do

    # test positive examples
    meme.positive_examples.each do |positive, ret|
      it "should match \"#{positive}\"" do
        if ret
          expect(meme.match(positive)).to eq(ret)
        else
          expect(meme.match(positive)).to eq(false)
        end
      end
    end

    # test negative examples
    unless meme.negative_examples.nil?
      meme.negative_examples.each do |negative|
        it "should not match \"#{negative}\"" do
          expect(meme.match(negative)).to eq(false)
        end
      end
    end
  end

end
