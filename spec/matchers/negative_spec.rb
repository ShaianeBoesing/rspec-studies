RSpec::Matchers.define_negated_matcher :exclude, :include
RSpec::Matchers.define_negated_matcher :not_eq, :eq
RSpec::Matchers.define_negated_matcher :be_not_within, :be_within

describe Array.new([1,2,3]) do
  it { is_expected.to exclude(4) }
  it { is_expected.to not_eq([4,5,6]) }
  it { expect([10.5, 9.5]).to all (be_within(0.5).of(10)) }
  it { expect([10.5, 9.5]).to all (be_not_within(0.3).of(10)) }
end