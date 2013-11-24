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

      example 'multiples of ten' do

        words = [20,30,40,50,60,70,80,90].map(&:in_words)
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

      example 'integers below one hundred that are not multiples of ten' do

        words = [22,33,44,55,66,77,88,99].map(&:in_words)
        expect(words).to eq [ 
                              "twenty two",
                              "thirty three",
                              "forty four",
                              "fifty five",
                              "sixty six",
                              "seventy seven",
                              "eighty eight",
                              "ninety nine",
                            ]

      end

    end

  end

end