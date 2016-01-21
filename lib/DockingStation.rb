require_relative 'bike' 

class DockingStation

DEFAULT_CAPACITY = 20

attr_reader :bikes, :capacity

	def initialize(capacity=DEFAULT_CAPACITY)
		@capacity = capacity
		@bikes = []
	end

	def release_bike(n)
		if @bikes.empty?
			fail 'There are no bikes'
		elsif not @bikes.include?(n)
		    fail "No such bike"
		elsif n.working?
		    @bikes.delete(n)
			n
		else
			fail 'The bike is broken, try another'
		end
	end
	

	def dock(n)
		fail 'Docking station full' if full?
		@bikes << n
	end


	private

	def full?
		@bikes.count == @capacity
	end

	def empty?
		@bikes.empty?
	end


end
