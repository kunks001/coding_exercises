module IntegerConverter

  WORDS_MAP = {
                1 => 'one',
                2 =>'two',
                3 => 'three',
                4 => 'four',
                5 => 'five',
                6 => 'six',
                7 => 'seven',
                8 => 'eight',
                9 => 'nine',
                10 => 'ten',
                11 => 'eleven',
                12 => 'twelve',
                13 => 'thirteen',
                14 => 'fourteen',
                15 => 'fifteen',
                16 => 'sixteen',
                17 => 'seventeen',
                18 => 'eighteen',
                19 => 'nineteen',
                20 => 'twenty',
                30 => 'thirty',
                40 => 'forty',
                50 => 'fifty',
                60 => 'sixty',
                70 => 'seventy',
                80 => 'eighty',
                90 => 'ninety'
              }

  MAGNITUDE_MAP = {
                    100 => "hundred"
                  }

  def in_words
    WORDS_MAP[self] || in_multiple_words
  end

  def in_multiple_words
    multiple_of(magnitude) ? round_number_in_words : unrounded_number_in_words
  end

  def multiple_of magnitude
    modulo(magnitude) == 0
  end

  def magnitude
    10 ** Math.log10(self).floor
  end

  def round_number_in_words
    [div(magnitude).in_words, magnitude_in_words].join(' ')
  end

  def unrounded_number_in_words
    [magnitude_in_words, remainder_in_words].join(' ')
  end

  def magnitude_in_words
    MAGNITUDE_MAP[magnitude]
  end

  def remainder_in_words
    modulo(10).in_words
  end

end