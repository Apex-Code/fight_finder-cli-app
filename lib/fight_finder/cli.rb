class FightFinder::CLI

  def call
    list_fights
    menu
    goodbye
  end

  def list_fights
    puts "Upcoming Fights"
    puts <<-DOC.gsub /^\s*/, ''
            1.  Lots of Fights
            2.  More Fights
            DOC

    @fights = FightFinder:Fights.upcoming
  end

  def menu
    input = ""
    while input != "exit"
      puts "Enter the Fight you'd like more info on, type list to see fights again or exit to leave:"
      input = gets.strip.downcase
      case input
          when "1"
            puts "More info on fight number 1"
          when "2"
            puts "More info on fight number 2"
          when "list"
            list_fights
          else
            puts "Not sure what you mean, type list to see options or exit to... quit."
        end
      end
    end

    def goodbye
      puts "Thanks for stopping by..."
    end

end
