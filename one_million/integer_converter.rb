module IntegerConverter

  WORD_MAP = {
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
                    100 => "hundred",
                    1000 => "thousand",
                  }

  def in_words
    known_word ? map_words : nil
  end

  def known_word
    self > 0 && self <= 1000000 ? true : false
  end

  def map_words
    return "one million" if self == 1000000
    WORD_MAP[self] || in_multiple_words
  end

  def in_multiple_words
    multiple_of(magnitude) ? round_number_in_words : unrounded_number_in_words
  end

  def multiple_of magnitude
    modulo(magnitude) == 0
  end

  def magnitude
    order_of_magnitude > 1000 ? 1000 : order_of_magnitude
  end

  def order_of_magnitude
    10 ** Math.log10(self).floor
  end

  def round_number_in_words
    [div(magnitude).in_words, magnitude_word].join(' ')
  end

  def unrounded_number_in_words
    [magnitude_in_words, remainder_in_words].join(separator)
  end

  def separator
    magnitude == 100 || thousands_without_hundreds ? ' and ' : ' '
  end

  def thousands_without_hundreds
    magnitude == 1000 && self % magnitude < 100
  end

  def magnitude_in_words
    round_down_to_multiple_of_magnitude.in_words
  end

  def round_down_to_multiple_of_magnitude
    div(magnitude)*magnitude
  end

  def magnitude_word
    MAGNITUDE_MAP[magnitude]
  end

  def remainder_in_words
    modulo(magnitude).in_words
  end 
end