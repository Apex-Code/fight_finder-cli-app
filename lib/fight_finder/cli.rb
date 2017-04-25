class FightFinder::CLI

  def call
    list_fights
    menu
    goodbye
  end

  def list_fights
   @fights = FightFinder::Fights.upcoming
   @fights.each.with_index(1) do |fight, i|
      puts "#{i}.  #{fight}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the Fight you'd like more info on, type list to see fights again or exit to leave:"
      input = gets.strip.downcase
        if input.to_i  > 0
          puts @fights[input.to_i - 1]
        elsif input == "list"
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
