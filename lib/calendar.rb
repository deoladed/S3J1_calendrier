require 'time'
require 'date'
require 'pry'
require_relative 'event'

class Calendar_Displayer
	attr_accessor :event

	def initialize
	end

end

# puts "    Sun     Mo     Tu     We       Th        Fr      Sa"

# puts "-" *60
# puts "|" + 


def frame(text, char)
    space = " "
    number_of_words = text.count
    sorted_by_chars = text.sort_by(&:length)
    number_of_chars = sorted_by_chars[-1].size
    number_of_chars_spaced = sorted_by_chars[-1].size + 4
    puts char * number_of_chars_spaced + "\n"
    i = 0
    while i < number_of_words
        number_of_chars_array = text[i].to_s.size
        result = char + space + text[i]
        x = number_of_chars - number_of_chars_array
        puts result + (space*x) + space+ char + "\n"
        i += 1
    end
    puts char * number_of_chars_spaced
end
frame(['Small frame salut'], "~")
