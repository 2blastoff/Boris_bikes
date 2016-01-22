require './lib/DockingStation.rb'

class Van
    
    attr_reader :bikes_in_van
    
    def initialize
        @bikes_in_van = []
    end
    
    def take(n)
		n.bikes.select {|x| @bikes_in_van << x unless x.working?}
	end
end