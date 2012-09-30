$LOAD_PATH << File.join(File.dirname(__FILE__), "lib")

require 'rspec'
require 'memetron'

def test_meme(meme)

  describe meme do

    # test positive examples
    meme.positive_examples.each do |positive, ret|
      it "should match \"#{positive}\"" do
        if ret
          meme.match(positive).should == ret
        else
          meme.match(positive).should_not be_false
        end
      end
    end

    # test negative examples
    unless meme.negative_examples.nil?
      meme.negative_examples.each do |negative|
        it "should not match \"#{negative}\"" do
          meme.match(negative).should be_false
        end
      end
    end
  end

end
