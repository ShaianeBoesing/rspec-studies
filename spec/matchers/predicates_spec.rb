describe "Predicates" do 
    context "Ruby predicates nil? .odd? and .even?" do
        it "is equivalent to" do 
            expect(defined? x).to be_nil
        end
        it "is equivalent to" do 
            expect(1).to be_odd
        end
        it "is equivalent to" do 
            expect(2).to be_even
        end
    end
end