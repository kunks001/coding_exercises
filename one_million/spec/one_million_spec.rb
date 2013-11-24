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

      example 'integers between 100 and 1000' do

        words = [111,222,333,444,555,666,777,888,999].map(&:in_words)
        expect(words).to eq [ 
                              "one hundred and eleven",
                              "two hundred and twenty two",
                              "three hundred and thirty three",
                              "four hundred and forty four",
                              "five hundred and fifty five",
                              "six hundred and sixty six",
                              "seven hundred and seventy seven",
                              "eight hundred and eighty eight",
                              "nine hundred and ninety nine"
                            ]

      end

      example 'multiples of 1000' do

        words = [1000,20000,300000].map(&:in_words)
        expect(words).to eq [ 
                              "one thousand",
                              "twenty thousand",
                              "three hundred thousand",
                            ]

      end

      example 'any integer between 1000 and 999999' do

        words = [1234,23456,345678,456789,999999].map(&:in_words)
        expect(words).to eq [ 
                              "one thousand two hundred and thirty four",
                              "twenty three thousand four hundred and fifty six",
                              "three hundred and forty five thousand six hundred and seventy eight",
                              "four hundred and fifty six thousand seven hundred and eighty nine",
                              "nine hundred and ninety nine thousand nine hundred and ninety nine"
                            ]

      end


    end

  end

end