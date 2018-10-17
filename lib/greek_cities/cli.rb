class GreekCities::CLI 
  
  def call
    GreekCities::City.scrape_populationmongabay
    list_cities
    menu
    goodbye
  end
  
  def list_cities
     puts "Largest Cities in Greece:"
     GreekCities::City.each.with_index(1) do |city, i|
       puts "#{i}. #{city.name} - #{city.population}"
     end
   end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the city you'd like more info on or type list to see the cities again or type exit:"
      input = gets.strip.downcase
      
      if input.to_i > 0 && input.to_i <= GreekCities::City.each.with_index.all
        the_city = GreekCities::City.each.with_index[index.to_i-1]
        puts "#{the_city.name} - #{the_city.population}"
      elsif input == "list"
        list_cities
      else
        puts "Please type list or exit."
      end
    end
  end

  def goodbye
    puts "Thank you for visiting the Greek Cities!!"
  end
end
        
