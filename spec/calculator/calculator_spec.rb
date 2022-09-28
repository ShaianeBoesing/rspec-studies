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
end