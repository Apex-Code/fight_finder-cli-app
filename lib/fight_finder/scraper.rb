#   ~~~HAVICK WAS HERE~~~
require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper
def self.get_upcoming
	doc = Nokogiri::HTML(open("http://www.ufc.com/schedule/event"))
	 doc
end
end

Scraper.get_upcoming
