require 'time'
require 'pry'

class Event
	attr_accessor :start_date, :length, :title, :attendees

	def initialize(datedebut, duree, titre, invites)
		@start_date = Time.parse(datedebut)
		@length = duree.to_i
		@title = titre
		@attendees = invites
	end

	def postpone_24h
		@start_date += 86400
	end

	def end_date
		puts "Heure de fin #{@start_date + @length * 60}"
	end

	def is_past
		@start_date < Time.now
	end

	def is_future
		!self.is_past
	end

	def is_soon
		@start_date - Time.now < 30 * 60 && @start_date < Time.now
	end

	def to_s
	puts "Titre : #{@title}"
	puts "Date de début : #{@start_date}"
	puts "Durée : #{@length} minutes"
	print "Invités :" 
	attendees.map { |invi| print invi + ", " }
	end
end

# monevent = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie, jean])