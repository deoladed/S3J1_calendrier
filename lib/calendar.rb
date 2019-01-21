require 'time'
require 'date'
require 'pry'
require_relative 'event'

class Calendar_Displayer
	attr_accessor :event

	def initialize
	end

end

print "Sun     Mo     Tu     We       Th        Fr      Sa"


def frame(text, char)

 lenght = text.size
 str = char * (lenght + 4) +  "\n"
 text.split(//).each {|txt| str += "#{char} " + txt + (" " * ((lenght + 1) - txt.size)) + char + "\n"}
 str += char * (lenght + 4)
 str
end

frame("yoyoyo", "#")