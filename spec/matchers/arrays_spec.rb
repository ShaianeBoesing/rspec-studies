RSpec.describe [1,2,3], "Array", :collection do 
    it "#include" do 
        expect(subject).to include(2,1)
    end
    it "#match_array"  do #alias of #contain_exactly 
        expect(subject).to match_array([1,3,2])
    end

    it "#contain_exactly" do
        expect(subject).to contain_exactly(3,1,2)
    end
end