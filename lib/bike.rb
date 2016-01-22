class Bike
	
	def initialize
		@working = true
	end
	
	def is_broken 
		@working = false
	end
	
	def is_fixed
		@working = true	
	end
	
	def working?
		@working
	end
	


end
