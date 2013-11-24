require './one_million'

  describe IntegerConverter do

    before :all do
      class Fixnum
        prepend IntegerConverter
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

      example 'multiples of 100' do

        words = [100,200,300,400,500,600,700,800,900].map(&:in_words)
        expect(words).to eq [ 
                              "one hundred",
                              "two hundred",
                              "three hundred",
                              "four hundred",
                              "five hundred",
                              "six hundred",
                              "seven hundred",
                              "eight hundred",
                              "nine hundred"
                            ]

      end

    end

  end

end