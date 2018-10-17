class GreekCities::City
  attr_accessor :name, :population, :url
  
  @@cities = []
  
  def initialize
    @@cities << self
  end
  
  def self.all 
    @@cities
  end
  
  def self.scrape_cities
    cities = []
    
    cities << self.scrape_populationmongabay
   
    cities
    
  end
  
  def self.scrape_populationmongabay
    
      doc = Nokogiri::HTML(open("https://population.mongabay.com/population/greece"))
      city_rows = doc.css("tr")
      city_rows.each do |row|
        city = GreekCities::City.new
        city.name = row.children.children.children.text
        city.population = row.children[1].children[0].text
        city.url = row.children.children.first.attributes['href'].value
    
    end
    binding.pry 
      city
  end
end
  
