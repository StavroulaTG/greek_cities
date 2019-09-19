class GreekCities::City
  attr_accessor :name, :population, :last_update

  @@cities = []

  def initialize
    @@cities << self
  end

  def self.all
    @@cities
  end

  def self.scrape_population_mongabay

      doc = Nokogiri::HTML(open("https://population.mongabay.com/population/greece"))

      city_rows = doc.css("tr").drop(1)

      city_rows[0...130].each do |row|

        city = GreekCities::City.new
        city.name = row.children[0].text
        city.population = row.children[2].text
        city.last_update = row.children[3].text

    end
  end
end
