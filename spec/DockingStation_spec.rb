require 'DockingStation.rb'

describe DockingStation do
	
	let(:bike) {double :bike}
	
	
it {is_expected.to respond_to :release_bike}

it { is_expected.to respond_to(:dock).with(1).argument }

it 'docks something' do
	expect(subject.dock(bike)).to include(bike)
end

it 'raises an error when the docking station is full' do
	subject.capacity.times { subject.dock(bike) }
	expect { subject.dock(:bike) }.to raise_error 'Docking station full'
end

it 'allows a user to set a capacity variable when a Docking Station is instantiated' do
	station = DockingStation.new(35)
	expect (station.capacity) == 35
end

it 'assigns the default capacity to DEFAULT_CAPACITY when no arguments are passed' do
	station = DockingStation.new
	expect(station.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
end


it 'raises an error when there are no bikes available' do
	expect{ subject.release_bike }.to raise_error
end


it 'does not release bikes which are broken' do
	allow(bike).to receive(:working?).and_return(false)
	subject.dock(:bike)
	expect{subject.release_bike(:bike)}.to raise_error 
end


end
