require './lib/DockingStation.rb'

class Garage
    
    attr_reader :take_from_van
    attr_reader :garage
    
    def initialize
        @garage = []
    end
    
    
    def take_from_van(n)
       n.bikes_in_van.each {|x| @garage << x} 
    end
    
    def fix_it
       @garage.each {|x| x.is_fixed}
    end
    
    
end
