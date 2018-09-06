class GreekIslands::CLI 
  
  def call
    puts "20 Best Greek Islands:"
    list_islands
    menu
    goodbye
  end
  
  def list_islands
    puts <<~DOC
    1. Hydra - Places to stay in Hydra.
    2. Corfu - Places to stay in Corfu.
    DOC
  end
  
  def menu
    
    input = nil
    while input != "exit"
    puts "Enter the number of the island you'd like more info on or type list to see the islands again or type exit:"
    input = gets.strip.downcase
    case input
    when "1"
      puts "More info on island 1..."
      when "2" 
        puts "More info on island 2..."
      when "list"
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
        
