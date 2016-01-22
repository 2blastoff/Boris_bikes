require 'Van.rb' 

describe Van do
    
    let (:station) {double :DockingStation}
    it{is_expected.to respond_to :take}
    
    let(:bike1) {double :bike1}
    let(:bike2) {double :bike2}
    let(:bike3) {double :bike3}
    
    it 'van collects broken bikes' do
        allow(station).to receive(:bikes).and_return([bike1, bike2, bike3])
        allow(bike1).to receive(:working?).and_return true
        allow(bike2).to receive(:working?).and_return false
        allow(bike3).to receive(:working?).and_return false
        expect(subject.take(station)).to eq [bike2, bike3]
    end
    
    
    
=begin    
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
    
=end


end