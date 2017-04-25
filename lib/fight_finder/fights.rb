#   ~~~HAVICK WAS HERE~~~


class FightFinder::Fights

attr_accessor :name, :tv, :location, :date, :main_event, :fight_card

def self.upcoming
	#by the end of this method, should return the next five upcoming fights!!
   puts "Upcoming Fights"
   puts <<-DOC.gsub /^\s*/, ''
          1.  Lots of Fights
          2.  More Fights
          DOC
     fight_1 = self.new
     fight_1.name = "event 211"
     fight_1.location = "Houston, Texas"
     fight_1.date = "03-06-1986"
     fight_1.tv = "PPV only"
     fight_1.main_event = "Those two guys"
     fight_1.fight_card = "this one is a maybe"

    fight_2 = self.new
    fight_2.name = "event 211"
    fight_2.location = "Houston, Texas"
    fight_2.date = "03-06-1986"
    fight_2.tv = "PPV only"
    fight_2.main_event = "Those two guys"
    fight_2.fight_card = "this one is a maybe"

    fight_3 = self.new
    fight_3.name = "event 211"
    fight_3.location = "Houston, Texas"
    fight_3.date = "03-06-1986"
    fight_3.tv = "PPV only"
    fight_3.main_event = "Those two guys"
    fight_3.fight_card = "this one is a maybe"

     fight_4 = self.new
     fight_4.name = "event 311"
     fight_4.location = "Houston, Texas"
     fight_4.date = "03-06-1986"
     fight_4.tv = "PPV only"
     fight_4.main_event = "Those two guys"
     fight_4.fight_card = "this one is a maybe"

      fight_5 = self.new
      fight_5.name = "event 311"
      fight_5.location = "Houston, Texas"
      fight_5.date = "03-06-1986"
      fight_5.tv = "PPV only"
      fight_5.main_event = "Those two guys"
      fight_5.fight_card = "this one is a maybe"
       [fight_1, fight_2, fight_3, fight_4, fight_5]

    end
  end
