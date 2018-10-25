class GreekCities::CLI 
  
  def call
    GreekCities::City.scrape_population_mongabay
    list_cities
    menu
    goodbye
  end
  
  def list_cities
    puts ''
    puts "The Largest Cities in Greece:"
    puts ''
    GreekCities::City.all.each.with_index(1) do |city, i|
      puts "#{i}. #{city.name}"
    
     end
   end
  
  def menu
    input = nil
    while input != "exit"
   puts ''
      puts  "      Enter the number of the city you'd like more info on 
                            OR
              type list to see the cities again
                            OR
                        type exit:"
      puts ''
      input = gets.strip.downcase
      
      if input.to_i > 0 
        the_city = GreekCities::City.all[input.to_i-1]
        puts ''
        puts "#{the_city.name} - population: #{the_city.population}"
        puts ''
      elsif input == "list"
        list_cities
   
      end
    end
  end

  def goodbye
    puts ''
    puts "Thank you for visiting the Greek Cities!!!"
    puts ''
  end
end
         
