class Van
    
    attr_reader :van
    
    def initialize
        @van = []
    end
    
    def take(dockstation)
		dockstation.bikes.each {|bike| @van << bike unless bike.working?}
	end
end