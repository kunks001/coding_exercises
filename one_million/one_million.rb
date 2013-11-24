require_relative 'integer_converter'

class Fixnum
	prepend IntegerConverter
end

(1..1000000).each { |n| puts n.in_words }