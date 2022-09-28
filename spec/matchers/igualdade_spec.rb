describe "Equality Matchers" do 
    let(:x) { String.new("ruby") }
    let(:y) { String.new("ruby") }
    let(:z) { String.new("diamond") }
    context "#equal" do #equal tests objects and compares memmory addres
        it "must to be equal" do 
            expect(x).to equal(x)
        end

        it "must not to be equal" do 
            expect(x).to_not equal(y)
        end
    end

    context "#be" do #be tests objects and compares memmory addres
        it "must be same object" do 
            expect(x).to be(x)
        end
        it "must not to be same object" do 
            expect(x).to_not be(y)
        end
    end

    context "#eql or #eq" do #eql or #eq tests content
        it "must have same content" do 
            expect(x).to eql(y)
            expect(x).to eq(y)
        end
        it "must not to have same content" do 
            expect(x).to_not eql(z)
            expect(x).to_not eq(z)
        end
    end
end