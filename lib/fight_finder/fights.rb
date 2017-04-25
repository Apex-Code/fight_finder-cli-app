#   ~~~HAVICK WAS HERE~~~


class FightFinder::Fights

def self.upcoming
	#by the end of this method, should return the next five upcoming fights!!
   puts "Upcoming Fights"
   puts <<-DOC.gsub /^\s*/, ''
          1.  Lots of Fights
          2.  More Fights
          DOC
  end
end
