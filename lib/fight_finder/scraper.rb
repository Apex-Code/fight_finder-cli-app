#   ~~~HAVICK WAS HERE~~~
#require 'open-uri'
#require 'pry'
#require 'nokogiri'

class Scraper

	attr_accessor :html, :title, :date, :tv, :location
def initialize
@event_group = []
@doc = Nokogiri::HTML(open("http://www.ufc.com/schedule/event"))
end

def get_page

@title = @doc.search("div.event-title a")[0,5].text.split("UFC").reject{|x| x.empty?}
@tv = @doc.search("div.event-tagline a")[0,5].text.split("Live on").reject{|x| x.empty?}
@date = @doc.search("td.event-info div.date")[0,5].text.scan(/[0-9]/)
end
end
