#   ~~~HAVICK WAS HERE~~~
#require 'open-uri'
#require 'pry'
#require 'nokogiri'

class Scraper

	attr_accessor :html, :title, :channel, :date, :event_group, :tv
def initialize
@event_group = []
end

def get_page
	Nokogiri::HTML(open("http://www.ufc.com/schedule/event"))
end

def get_upcoming
   @tv = []
   @tv << self.get_page.css("div.event-tagline a")[0,5].text
	 @event_group<< self.get_page.css("div.event-title a")[0,5].text
	 @event_group = @event_group[0].split("UFC")
	 @tv = @tv[0].split("Live")
	 @event_group

end
end
t = Scraper.new
t.get_upcoming
