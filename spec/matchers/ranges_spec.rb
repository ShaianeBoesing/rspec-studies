RSpec.describe (1..5), 'Ranges' do
    it "#cover" do 
        expect(subject).to cover(2,1,5)
    end

    #one-liner Syntax
    it {is_expected.to cover(2,1,4)} 
    it {is_expected.not_to cover(0,6)} 
    it {expect(subject).to cover(3,5)} 
end