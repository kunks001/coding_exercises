require_relative 'one_million'

class Fixnum
	prepend IntegerConverter
end

(1..1000000).each { |n| puts n.in_words }