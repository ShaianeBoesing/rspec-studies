RSpec.describe 'all' do
    it {expect([2,4,6]).to all(be_even.and be_instance_of(Integer))}
    it {expect(['ruby', 'rails']).to all(be_a(String).and start_with('r'))}
end