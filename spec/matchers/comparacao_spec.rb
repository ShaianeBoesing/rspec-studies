describe "Comparation Matchers" do
    it "> tests if value is greater than" do
        expect(5).to be > 1
    end
    it ">= tests if value is greater than or equal to" do
        expect(5).to be >= 1
        expect(1).to be >= 1
    end
    it "< tests if value is less than " do
        expect(1).to be < 5
    end
    it "<= testes if value is less than or equal to" do
        expect(1).to be <= 5
        expect(5).to be <= 5
    end
    it "be_between inclusive" do
        expect(5).to be_between(3,7).inclusive
        expect(3).to be_between(3,7).inclusive
        expect(7).to be_between(3,7).inclusive
    end
    it "be_between exclusive" do
        expect(5).to be_between(3,7).exclusive
        expect(3).not_to be_between(3,7).exclusive
        expect(7).not_to be_between(3,7).exclusive
    end

    it "match with regex" do
        expect("email@gmail.com").to match(/.@.....\..../)
    end

    it "start_with" do
        expect("fulano de tal").to start_with("fulano")
        expect([1,2,3]).to start_with(1,2)
        expect([1,2,3]).to start_with([1,2])
    end
    it "end_with" do
        expect("fulano de tal").to start_with("fulano")
        expect([1,2,3]).to end_with(3)
        expect([1,2,3]).to end_with([2,3])
    end
end