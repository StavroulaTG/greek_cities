class GreekCities::City
  attr_accessor :name, :population

  @@cities = []

  def initialize
    @@cities << self
  end

  def self.all
    @@cities
  end

  def self.scrape_population_mongabay

      doc = Nokogiri::HTML(open("https://population.mongabay.com/population/greece"))

      city_rows = doc.css("tr")

      city_rows.each do |row|

        city = GreekCities::City.new
        city.name = row.children.children.children.text
        city.population = row.children[2].text

    end
  end
end
