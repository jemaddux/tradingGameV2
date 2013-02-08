#The new trading game that uses arrays fro buying and 
#selling to help simplify flow control.
#I need to have arrays work on the places too.
require 'yaml'
@filename = "tradinggamev2save.txt"

class Game
  def initialize
    @market = {}
    @harbor = {}
    @woods = {}
    
    @places = []

  end

  def start_game
    
  end
end

  # @market = [
  #     "market",
  #     "Welcome to the market. Here you can buy and sell wood, meat, fish, wheat and bread.",
  #     "At the market: We trade in wood, meat, fish, wheat and bread. Would you like to sell or buy (S/B)",
  #     "Would you like to trade (w)ood, (m)eat, (f)ish, (wh)eat or (b)read?",
  #     @wood, "w",
  #     @meat, "m",
  #     @fish, "f", 
  #     @wheat, "wh",
  #     @bread, "b",  
  #     2
  #   ]

  #   @harbor = [
  #     "harbor",
  #     "Welcome to the harbor. Here you can buy and sell fish and wheat.",
  #     "At the harbor: We trade in fish and wheat. Would you like to buy or sell? (B/S)",
  #     "Would you like to trade (f)ish or (wh)eat?",
  #     @fish, "f",
  #     @wheat, "wh",
  #     -1
  #   ]

  # def intiate
  #   puts "Welcome to the Trading Town!"
  #   puts "Would you like to load your old game (Y/N)?"
  #   loadit = gets.chomp.downcase
  #   #Intial items and money settings.
  #   if (loadit == "y")
  #     puts "Loading your old game...."
  #     loadgame()
  #     puts "Done."
  #     puts ""
  #   else
  #     puts "Starting a new game...."
  #     puts ""
  #     @wood = [0,"wood",2,2] #(quantity,name of object,buy price,sell price)
  #     @copper = 20 
  #     @meat = [0,"meat",7,5]
  #     @fish = [0,"fish",4,3]
  #     @wheat = [0,"wheat",2,2]
  #     @bread = [0,"bread",6,5]
  #   end
  #   whereto
  # end

  # def whereto
  #   puts "Where would you like to go? The (h)arbor or the (m)arket?"
  #   y = gets.chomp.to_s.downcase
  #   if (y == "h")
  #     puts ""
  #     place(@harbor)
  #   elsif (y == "m")
  #     puts ""
  #     place(@market)
  #   elsif (y == "esc")
  #     game_over
  #   elsif (y == "cheat")
  #     puts "You cheater."
  #     puts "What would you like to change?"
  #     puts "(w)ood, (m)eat, (c)opper, (f)ish, (wh)eat or (b)read?"
  #     y = gets.chomp.downcase
  #     if (y == "c")
  #       puts "You have #{@copper} coppers."
  #       puts "How many coppers do you want?"
  #       @copper = gets.chomp.to_i
  #       whereto
  #     elsif (y == "w")
  #       cheat(@wood)
  #       whereto
  #     elsif (y == "m")
  #       cheat(@meat)
  #       whereto
  #     elsif (y == "f")
  #       cheat(@fish)
  #       whereto
  #     elsif (y == "wh")
  #       cheat(@wheat)
  #       whereto
  #     elsif (y == "b")
  #       cheat(@bread)
  #       whereto
  #     end
  #   else 
  #     whereto
  #   end
  # end

  # def place (placearray)
  #   puts placearray[1]
  #   puts placearray[2]
  #   buyorsell = gets.chomp.downcase
  #   if (buyorsell == "b")
  #     puts placearray[3]
  #     what = gets.chomp.downcase
  #     placearray.length.times do |x|
  #       if (what == placearray[x])
  #         buy(placearray[x-1],(placearray[placearray.length.-1]))
  #       end
  #     end
  #   elsif (buyorsell == "s")
  #     puts placearray[3]
  #     what = gets.chomp.downcase
  #     placearray.length.times do |x|
  #       if (what == placearray[x])
  #         sell(placearray[x-1],(placearray[placearray.length.-1]))
  #       end
  #     end    
  #   else
  #      puts "That isn't a valid input."
  #   end
  #   puts ""
  #   whereto
  # end

  # def cheat(temparray)
  #   puts "You have #{temparray[0]} #{temparray[1]}."
  #   puts "How many would you like to add (or subtract)?"
  #   temparray[0] = temparray[0] + gets.chomp.to_i
  #   puts "You now have #{temparray[0]} #{temparray[1]}."
  #   puts ""
  #   puts "Please change the buy price."
  #   temparray[2] = gets.chomp.to_i
  #   puts "#{temparray[1]} now costs #{temparray[2]}."
  #   puts ""
  #   puts "Please change the sell price."
  #   temparray[3] = gets.chomp.to_i
  #   puts "#{temparray[1]} now sells for #{temparray[3]}."
  #   puts ""
  #   return temparray
  # end

  # def buy (temparray,margin) #allows you to buy any array item (3+ variables)
  #   howmany = temparray[0]
  #   what = temparray[1]
  #   buyprice = temparray[2]
  #   totalprice = buyprice + margin
  #   puts "You have #{@copper} coppers and #{howmany} #{what}."
  #   puts "#{what.capitalize} is #{totalprice} coppers a unit."
  #   puts "How many would you like to buy?"
  #   many = gets.chomp.to_i
  #   if ((@copper/totalprice) >= many)
  #      puts "You have bought #{many} #{what} and now have #{(howmany + many)} #{what} total."
  #      @copper = @copper - (many*totalprice)
  #      puts "You have #{@copper} coppers left."
  #      temparray[0] = (howmany + many)
  #      puts ""
  #      return temparray
  #   elsif ((@copper/(buyprice+margin)) < many)
  #      puts "You dont have enough money for that."
  #      puts ""
  #      return temparray
  #   end
  # end

  # def sell (temparray,margin) #allows you to sell any array item (3+ variables)
  #   howmany = temparray[0]
  #   what = temparray[1]
  #   sellprice = temparray[3]
  #   totalprice = sellprice + margin
  #   puts "You have #{@copper} coppers and #{howmany} #{what}."
  #   puts "#{what.capitalize} sells for #{totalprice} coppers a unit."
  #   puts "How many would you like to sell?"
  #   many = gets.chomp.to_i
  #   if (many <= howmany)
  #      puts "You have sold #{many} #{what} and now have #{(howmany - many)} #{what} total."
  #      @copper = @copper + (many * totalprice)
  #      puts "You have #{@copper} coppers."
  #      temparray[0] = (howmany - many)
  #      puts ""
  #      return temparray
  #   elsif (howmany > many)
  #      puts "You dont have enough #{what} to sell that many."
  #      puts ""
  #      return temparray
  #   end
  # end

  # def game_over
  #   savegame
  #   puts "Game Over!"
  # end
    
  # def savegame
  #   @savefile = [@copper,0].to_a + @wood + @meat + @fish + @wheat + @bread
  #   File.open @filename, 'w' do |f|
  #   f.write(@savefile.to_yaml)
  #   end
  # end

  # def loadgame
  #   @wood = [0,0,0]
  #   @meat = [0,0,0]
  #   @fish = [0,0,0]
  #   @wheat = [0,0,0]
  #   @bread = [0,0,0]
  #   tempfile = File.read(@filename)
  #   temparray = YAML::load tempfile
  #   @copper = temparray[0]
  #   x = temparray[1]
  #   mini_load0(temparray)
  # end 

  # def mini_load0(temparray)
  #   mini_load1(temparray)
  #   mini_load2(temparray)
  #   mini_load3(temparray)
  #   mini_load4(temparray)
  #   mini_load5(temparray)
  # end

  # def mini_load1(temparray)
  #   (0..3).each do |x|
  #     @wood[x] = temparray[x+2]
  #   end
  # end

  # def mini_load2(temparray)
  #   (0..3).each do |y|
  #     @meat[y] = temparray[y+6]
  #   end
  # end

  # def mini_load3(temparray)
  #   (0..3).each do |z|
  #     @fish[z] = temparray[z+10]
  #   end
  # end

  # def mini_load4(temparray)
  #   (0..3).each do |a|
  #     @wheat[a] = temparray[a+14]
  #   end
  # end

  # def mini_load5(temparray)
  #   (0..3).each do |b|
  #     @bread[b] = temparray[b+18]
  #   end
  # end

if __FILE__ == $0

game = Game.new
game.start_game

end