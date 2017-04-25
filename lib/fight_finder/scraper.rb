#   ~~~HAVICK WAS HERE~~~


class Scraper

	attr_accessor :html, :title, :date, :tv, :location


def initialize
end

def get_page

@title = @doc.search("div.event-title a")[0,5].text.split("UFC").reject{|x| x.empty?}
@tv = @doc.search("div.event-tagline a")[0,5].text.split("Live on").reject{|x| x.empty?}
@date = @doc.search("td.event-info div.date")[0,5].text.strip.gsub("  ", "").split(/\n/).reject{|x| x.empty?}

end
end
