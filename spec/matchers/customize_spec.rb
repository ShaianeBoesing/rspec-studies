RSpec::Matchers.define :be_a_multiple_of do |expected| 
  match do |actual|
    actual % expected == 0
  end

  failure_message do |actual|
    "expected that #{actual} would be a multiple of #{expected}"
  end
  
  description do 
    "be multiple of #{expected}"
  end
end

describe 18 do 
  it { is_expected.to be_a_multiple_of 9 }
  it { is_expected.not_to be_a_multiple_of 7} 
  it { is_expected.to be_a_multiple_of 7} #will raise error 
end