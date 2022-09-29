RSpec.describe "Ruby on Rails" do 
    it {is_expected.to start_with("Ruby").and end_with("Rails")}
end

RSpec.describe ["Ruby", "on", "Rails"] do 
    it {is_expected.to start_with("Ruby").and end_with("Rails")}
end

RSpec.describe '#or' do
    it {expect(fruta).to eq("laranja").or eq("banana").or eq("morango")}
end