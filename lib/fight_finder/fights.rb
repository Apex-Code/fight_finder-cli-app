#   ~~~HAVICK WAS HERE~~~


class FightFinder::Fights

attr_accessor  :date, :main_event, :co_main, :location, :name, :under_card
@@all = []

def initialize
@name = name
@main_event = main_event
@co_main = co_main
@location = location
@date = date
@under_card = under_card
@@all << self
end

  def self.upcoming
     FightFinder::Scraper.scrape_details
  end



    def self.all
      @@all
    end

    def save
      self.all << self
    end


end
