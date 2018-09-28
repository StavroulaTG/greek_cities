class GreekCities::Cities 
  attr_accessor :name, :population, :url
  
  def self.all 
    self.scrape_cities
  end
  
  def self.scrape_cities
    cities = []
    
    cities << self.scrape_populationmongabay
   
    cities
    
  end
  
  def self.scrape_populationmongabay
    
    #doc = Nokogiri::HTML(open("https://www.cntraveller.com/gallery/best-greek-islands-beaches"))
    doc = Nokogiri::HTML(open("https://population.mongabay.com/population/greece"))
    
      
    rows = doc.css("tr")
    rows.each_with_index do |row, i|
      
      city = self.new
      
      city.name = row.children[0].children[0].children.text
      city.population = row.children[1].children[0].text
      url = Nokogiri::HTML(open("https://population.mongabay.com/population/greece"))
      
      #binding.pry  
    
    end

    city
  end

end
    
