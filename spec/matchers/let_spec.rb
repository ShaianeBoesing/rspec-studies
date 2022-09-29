$counter = 0
RSpec.describe "let" do 
    let(:count) { $counter += 1} #do not load before test, it loads when it's called
    it {
        expect($counter).to eq(0) # first time is loaded again and incremented
    }

    it { 
        expect(count).to eq(1) #laods when let is called
        expect(count).not_to eq(2) # executes only once into test
    }
end

$index = 0
RSpec.describe "let!" do 
    let!(:counter) { $index += 1} #loads before test
    it {
        expect($index).to eq(1) # receveis value incremented
        expect(counter).to eq(1) # only executes before test
    }

end