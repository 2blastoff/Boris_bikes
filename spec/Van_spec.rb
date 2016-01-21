require 'Van.rb' 
require 'DockingStation.rb'
require 'bike.rb'

describe Van do
    it{is_expected.to respond_to :take}
    
    
it 'returns the value false' do
 van = Van.new
 station = DockingStation.new
 bike1 = Bike.new
 bike2 = Bike.new
 bike2.is_broken
 station.dock(bike1)
 station.dock(bike2)
 van.take(station)
 expect(van.van).to eq [bike2]
    
end

end