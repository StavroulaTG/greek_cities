class GreekIslands::Islands 
  attr_accessor :name, :stay, :url 
  
  def self.all 
    self.scrape_islands
  end
  
  def self.scrape_islands
    islands = []
    
    islands << self.scrape_cntraveller
    
    islands
  end
  
  def self.scrape_cntraveller
    doc = Nokogiri::HTML(open("https://www.cntraveller.com/gallery/best-greek-islands-beaches"))
    
    island = self.new
    island.name = doc.search("div.c-figure__title").text
    island.stay = doc.search("strong.bb-strong").text
    island.url = "https://github.com/StavroulaTG/greek_islands"
    binding.pry 
    island
  end
end
    
