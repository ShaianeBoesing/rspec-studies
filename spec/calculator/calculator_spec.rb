require 'calculator'

describe Calculator do
    # uses # for instance methods
    # uses . for class methods
    # subject is a reference to Calculator instance.
    subject(:calculator) { described_class.new()}
    context '#sum' do
		it 'must sum positive values' do
			result = calculator.sum(1,2)
			expect(result).to eq(3)
		end
        
        #in cases you want a test to be classified as "pendent", you can replace "it" for "xit"
		it 'must sum negative values' do
			result = subject.sum(1,-2)
			expect(result).to eq(-1)
		end
	end

	context '#div' do
		it "must divide by zero and throws an error" do
			expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError)
			expect{subject.div(3, 0)}.to raise_error("divided by 0")
			expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0")
		end
	end
end