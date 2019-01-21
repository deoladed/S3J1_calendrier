require_relative '../lib/event'

describe Event do

  before(:each) do
    Object.send(:remove_const, 'Event')
    load 'event.rb'
  end

	describe 'initializer' do
		it 'creates an event' do
			monevent = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["julie", "jean"]) 
		expect(monevent.class).to eq(Event)
		end

		it 'saves a lot of stuff as instance variable' do
			start_date = "2019-01-01 10:10:00 +0100"
			length = 30
			title = "Titreee"
			attendees = "invitese"
			monevent = Event.new(start_date, length, title, attendees)
			expect(monevent.start_date).to eq(Time.parse(start_date))
			expect(monevent.length).to eq(length)
			expect(monevent.title).to eq(title)
			expect(monevent.attendees).to eq(attendees)
		end
	end


	describe 'instance methods' do

		describe 'postpone_24h' do
			it "changes start_date to the next day" do
				monevent = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["julie", "jean"]) 
				expect(monevent.postpone_24h).to eq(Time.parse("2019-01-14 09:00"))
			end
		end

end
end

