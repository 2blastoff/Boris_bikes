require 'bike.rb'

describe Bike do
it {is_expected.to respond_to :working?} 


it 'returns the value false' do
    bike = Bike.new
    bike.is_broken
    expect(bike.working?).to eq false 
end
   



end 

