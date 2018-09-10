class GreekIslands::CLI 
  
  def call
    list_islands
    menu
    goodbye
  end
  
  def list_islands
     puts "20 Best Greek Islands:"
     @islands = GreekIslands::Islands.all
     @islands.each.with_index(1) do |island, i|
       puts "#{i}. #{island.name} - #{island.stay}"
     end
   end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the island you'd like more info on or type list to see the islands again or type exit:"
      input = gets.strip.downcase
      
      if input.to_i > 0
        the_island = @islands[input.to_i-1]
        puts "#{the_island.name} - #{the_island.stay}"
      elsif input == "list"
        list_islands
      else
        puts "Please type list or exit."
      end
    end
  end

  def goodbye
    puts "Thank you for visiting the Greek Islands!!"
  end
end
        
