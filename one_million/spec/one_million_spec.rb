require './one_million'

  describe IntegerConverter do

    before :all do
      class Fixnum
        include IntegerConverter
      end
    end

    describe 'should output an integer value as words' do

      context 'from one to one million' do	

        example 'first 19 integers' do

          words = (1..19).to_a.map(&:in_words)
          expect(words).to eq [ "one",
                                "two",
                                "three",
                                "four",
                                "five",
                                "six",
                                "seven",
                                "eight",
                                "nine",
                                "ten",
                                "eleven",
                                "twelve",
                                "thirteen",
                                "fourteen",
                                "fifteen",
                                "sixteen",
                                "seventeen",
                                "eighteen",
                                "nineteen"
                              ]

        end

    end

  end

end