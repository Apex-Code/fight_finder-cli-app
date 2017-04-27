class FightFinder::CLI
  attr_accessor :name, :name, :location, :date, :main_event, :co_main, :doc, :events, :under_card

  def call
    puts "One second, while I retrieve the next five upcoming fights for you!"
    puts ""
    get_fights
    list_fights
    menu
    goodbye
  end

  def list_fights
    puts ""
    sleep 1
    puts "That was super hard (and if I'm being honest, you don't seem impressed)....  "
    puts ""
    sleep 2
    puts "Fine.  WHATEVER.  The next five sanctioned MMA fights are:  "
    puts ""
    sleep 3
    events.each.with_index(1) do |fight, i|
    puts "                                #{i}. #{fight.name}"
    puts ""
    sleep 2
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts ""
      puts "Want more info?  Pick one and I'll show you what Scrapey McScrapeface can do!!!"
      sleep 2
      puts "                          Or you can type exit to make a lonely gem..."
      input = gets.strip.downcase
        if input.to_i  > 0
        the_fight =  events[input.to_i - 1]
        puts ""
        puts ""
        puts "Thinking about checking out #{the_fight.name}?  Nice!"
        sleep 2
        puts ""
        puts "The main event for that one is:"
        puts ""
        puts "               #{the_fight.main_event}"
        puts ""
        sleep 1
        puts "And the under-card is looking like:"
        puts ""
        puts "                                 #{the_fight.under_card}"


        elsif input == "list"
        list_fights
        else
            puts "Not sure what you mean, type list to see options or exit to... quit." if input !="exit"
        end
      end
    end

    def goodbye
      puts "WAIT...  BABY, DON'T GO!!!!"
      puts ""
      sleep 1
      puts "sigh"
      puts ""
      sleep 1
      puts "F     R      V      R         L        N"
      puts "   O      E      E        A       O        E"
    end

    def events
      @events = FightFinder::Fights.all
    end

    def get_fights
      FightFinder::Fights.upcoming
    end

  end
