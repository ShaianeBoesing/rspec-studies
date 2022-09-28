describe "Boolean Matchers" do 
    context "#true and false" do 
        it "must be true" do
            expect(1.odd?).to be true 
        end

        it "must be false" do
            expect(1.even?).to be false 
        end
    end
    context "#be_truthy" do #verifies if value is not nil or not false 
        it "must not be false" do
            expect(1.odd?).to be_truthy 
        end

        it "must not be nil" do
            expect(String.new).to be_truthy 
        end
    end

    context "#be_falsy" do #verifies if value is nil or false
        it "must be false" do
            expect(1.even?).to be_falsey 
        end

        it "must be nil" do
            expect(nil).to be_falsey 
        end
    end

    context "#be_nil" do 
        it "must be nil" do
            expect(defined? x).to be_nil
        end
    end
    
end