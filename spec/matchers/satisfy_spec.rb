RSpec.describe [3,6,9,12,15] do
    it {
        expect(subject).to all(
            satisfy('be a multiple of 3') do |x| 
                x%3 == 0
            end 
        )
    }
end