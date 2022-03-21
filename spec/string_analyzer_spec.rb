class StringAnalyzer 
    def has_vowels?(str) 
       (str =~ /[aeio]+/i) 
    end 
 end
 
 describe StringAnalyzer do 
    context "With valid input" do 
       
       it "should detect when a string contains vowels" do 
          sa = StringAnalyzer.new 
          test_string = 'uuua' 
          expect(sa.has_vowels? test_string).to be true 
       end 
       it "should detect when a string doesn't contain vowels" do 
          sa = StringAnalyzer.new 
          test_string = 'bcdfg' 
          expect(sa.has_vowels? test_string).to be false
       end 
       it "should detect only one vowel and no other letters" do 
          sa = StringAnalyzer.new 
          test_string = 'aaa' 
          expect(sa.has_vowels? test_string).to be true
       end
       it "should detect at least one vowel and some consonats" do
        sa = StringAnalyzer.new
        test_string = "abcdef"
        expect(sa.has_vowels? test_string).to be true
      end
      it "should detect when a string contains constants only" do
        sa = StringAnalyzer.new
        test_string = "mnklp"
        expect(sa.has_vowels? test_string).to be false
      end
      it "shouldn't detect a vowel when a string is empty" do
        sa = StringAnalyzer.new
        test_string = ""
        expect(sa.has_vowels? test_string).to be false
      end
      it "should detect a vowel along with consonats, numbers and punctuation" do
        sa = StringAnalyzer.new
        test_string = "fjshad2332@323!!"
        expect(sa.has_vowels? test_string).to be true
      end
      it "shouldn't detect a vowel with only numbers and punctuation" do
        sa = StringAnalyzer.new
        test_string = "8923@@23"
        expect(sa.has_vowels? test_string).to be false
      end
      it "should detect when a string has upercase vowels" do
        sa = StringAnalyzer.new
        test_string = "AOUIE"
        expect(sa.has_vowels? test_string).to be true
      end
      it "should detect when a string has downcase vowels" do
        sa = StringAnalyzer.new
        test_string = "aouie"
        expect(sa.has_vowels? test_string).to be true
      end
      it "should detect when a string contains uppercase and lowercase vowels only" do
         sa = StringAnalyzer.new
         test_string = "AOUeeEEe"
         expect(sa.has_vowels? test_string).to be true
      end
      it "should detect when a string contains uppercase and lowercase vowels and constants" do
         sa = StringAnalyzer.new
         test_string = "AInfjsdneEE"
         expect(sa.has_vowels? test_string).to be true
        end
    end 
 end