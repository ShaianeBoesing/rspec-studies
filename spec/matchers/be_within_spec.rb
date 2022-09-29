RSpec.describe [10.5, 11, 11.5, 12, 12.5, 13, 13.5].sample do
    it {expect(subject).to be_within(1.5).of(12)}
end