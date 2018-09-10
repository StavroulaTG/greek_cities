class GreekIslands::Islands 
  attr_accessor :name, :stay
  
  def self.all
    
    island_1 = self.new 
    island_1.name = "Hydra"
    island_1.stay = "Orloff Boutique Hotel"
    
    island_2 = self.new 
    island_2.name = "Corfu"
    island_2.stay = "Rou Estate"
    
    [island_1, island_2]
  end
  
end
    
