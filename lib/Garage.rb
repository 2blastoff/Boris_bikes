class Garage
    
    def initialize
        @garage = []
    end
    
    
    def take_from_van(van)
       van.van.each {|bike| @garage << bike} 
    end
    
    
end
