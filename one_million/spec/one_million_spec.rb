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

          words = (1..19).to_a.map(&:in_a_word)
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

      example 'multiples of ten' do
        words = [20,30,40,50,60,70,80,90].map(&:in_a_word)
        expect(words).to eq [ 
                              "twenty",
                              "thirty",
                              "forty",
                              "fifty",
                              "sixty",
                              "seventy",
                              "eighty",
                              "ninety",
                            ]
      end

    end

  end

end