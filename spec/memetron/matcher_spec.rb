require 'spec_helper'

describe Memetron::Matcher, "#match" do
  it "returns nil if no match was found" do
    subject.match("blerg blerg blerg").should be_nil
  end

  it "can match and parse a meme" do
    subject.match_and_parse("a wild charizard appears").should == [:pokemon, ['charizard']]
  end
  
  it "returns nil if no match was found" do
    subject.match_and_parse('blerg blerg blerg').should be_nil
  end

  context "Pokemon" do
    it "is detected" do
      subject.match("a wild charizard appears").should == :pokemon
    end

    it "requires a subject" do
      subject.match("a wild  appears").should be_nil
    end

    it "is parsed" do
      subject.parse(:pokemon, "a wild charizard appears").should == ['charizard']
    end
  end

  context "Dos Equis" do
    it "is detected" do
      subject.match("I don't always go crazy but when i do i go all the way").should == :dos_equis
    end

    it "is detected despite poor grammar" do
      subject.match("I dont always go crazy but when I do I go all the way").should == :dos_equis
    end

    it "is parsed" do
      subject.parse(:dos_equis, "I don't always x but when I do y").should == ['x', 'y']
    end
  end

  context "Is best" do
    it "is detected" do
      subject.match("north korea is best korea").should == :is_best
    end

    it "is parsed" do
      subject.parse(:is_best, "north korea is best korea").should == ["north", "korea", "korea"]
    end
  end

  context "Yo dawg" do
    it "is detected" do
      subject.match("yo dawg i heard you like stereos so i put a stereo in your car so you can listen while you listen").should == :yo_dawg
    end

    it "is detected despite poor grammar" do
      subject.match("yo dawg i herd you like stereos so i put a stereo in your car so you can listen while you listen").should == :yo_dawg
    end

    it "is parsed" do
      subject.parse(:yo_dawg, "yo dawg i heard you like stereos so i put a stereo in your car so you can listen while you listen").should == ['stereos', 'stereo', 'car', 'listen', 'listen']
    end
  end

  context "Fry" do
    it %q(is detected with "Can't tell") do
      subject.match("can't tell if joking or not").should == :fry
    end

    it 'is detected with "Not sure"' do
      subject.match("not sure if joking or not").should == :fry
    end

    it "is parsed" do
      subject.parse(:fry, "cant tell if joking or not").should == ['cant tell', 'joking', 'not']
    end
  end

  context "Patrick" do
    it "is detected" do
      subject.match("let's take all the languages and put them over here").should == :patrick
    end

    it "is detected despite poor grammar" do
      subject.match("lets take all the languages and put them over here").should == :patrick
    end

    it "is parsed" do
      subject.parse(:patrick, "let's take all the languages and put them over here").should == ['languages']
    end
  end

  context "SOON" do
    it "is detected when it's by itself" do
      subject.match("SOON").should == :soon
    end

    it "is case-insensitive" do
      subject.match("soon").should == :soon
    end

    it "is detected when it's a sentence" do
      subject.match("SOON.").should == :soon
    end

    it "is detected with an ellipsis" do
      subject.match("SOON...").should == :soon
    end

    it "is parsed" do
      subject.parse(:soon, "SOON...").should == ['...']
    end
  end

  context "Y U NO" do
    it "is detected when it begins the sentence" do
      subject.match("Y U NO DO THIS?").should == :y_u_no?
    end

    it "is detected when it does not begin the sentence" do
      subject.match("PROGRAMMERS, Y U NO DO THIS?").should == :y_u_no?
    end

    it "requires a question mark" do
      subject.match("PROGRAMMERS, Y U NO DO THIS").should be_nil
    end

    it "is parsed" do
      subject.parse(:y_u_no?, "Y U NO DO THIS?").should == ['', 'DO THIS']
    end
  end

  context "Hipster Kitty" do
    it "is detected" do
      subject.match("I liked Ruby before Matz was born").should == :hipster_kitty
    end

    it "is parsed" do
      subject.parse(:hipster_kitty, "I liked Ruby before Matz was born").should == ['Ruby', 'Matz was born']
    end
  end

  context "Bear Grillis" do
    it "is detected" do
      subject.match("Write a Ruby library. Better drink my own piss").should == :bear_grillis
    end

    it "is parsed" do
      subject.parse(:bear_grillis, "Write a Ruby library. Better drink my own piss").should == ["Write a Ruby library."]
    end
  end
end
