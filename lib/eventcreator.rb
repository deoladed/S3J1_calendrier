require 'time'
require 'date'
require 'pry'
require_relative 'event'

class EventCreator
	attr_accessor :start_date, :length, :title, :attendees

	def initialize
		event_name
	end

	def event_name
		puts "Salut, tu veux créer un événement ? Cool ! 
Commençons, quel est le nom de l'événement ?"
	@title = gets.chomp
	event_date
	end

	def event_date
		puts "Super, quand aura-t-il lieu ?"
		date = gets.chomp
		@start_date = Date.parse(date).strftime("%Y/%m/%d") + " " + Time.parse(date).strftime("%k:%M:%S") + " +0100"
		event_length
	end

	def event_length
		puts "Au top, combien de temps en minutes va-t-il durer ?"
		@length = gets.chomp.to_i
		event_attendees
	end

	def event_attendees
		puts "Génial, qui va participer ? Balance leurs e-mails"
		result = gets.chomp
		@attendees = result.delete(",").split
		puts "\n \n Super, c'est noté, à bientôt !"
		event_create
	end

	def event_create
		# binding.pry
		Event.new(@start_date, @length, @title, @attendees)
		p @start_date
	end
end
EventCreator.new

# p e.attendees
# e = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie, jean])


# date = "le 15 octobre a 11h"

# print Date.parse(date).strftime("%Y/%m/%d") 
# print " "
# print Time.parse(date).strftime("%k:%M:%S")
# print " +0100"

# puts "\n"

# heure = Date.parse(date).strftime("%Y/%m/%d") + " " + Time.parse(date).strftime("%k:%M:%S") + " +0100"
# # p Time.strptime(date, "%Y-%m%d %k:%M:%S")
# p heure