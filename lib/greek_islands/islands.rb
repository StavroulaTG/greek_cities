class GreekIslands::Islands 
  attr_accessor :name, :stay
  
  def self.all 
    self.scrape_islands
  end
  
  def self.scrape_islands
    islands = []
    
    islands << self.scrape_cntraveller
   
    islands
    
  end
  
  def self.scrape_cntraveller
    
    #doc = Nokogiri::HTML(open("https://www.cntraveller.com/gallery/best-greek-islands-beaches"))
    doc = Nokogiri::HTML(open("https://population.mongabay.com/population/greece"))
    
    
    rows = doc.css("tr")
    rows.each do |row|
      island = self.new
      island.name = row.children[0].children[0].children.text
      binding.pry  
    
    end

    island
  end

end
    
