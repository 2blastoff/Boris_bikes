require 'Garage.rb'


describe Garage do
    
    let (:garage) {double :garage}
    
    it{is_expected.to respond_to :take_from_van}
    
    it 'should take bikes from van' do
       allow(garage).to receive(:bikes_in_van)
       
    end
    
    
end