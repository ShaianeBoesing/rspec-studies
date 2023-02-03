describe [10,11,12].sample do
  it 'Aggregate Failures' do 
    aggregate_failures do 
      is_expected.to eq(10)
      is_expected.to eq(11)
      is_expected.to eq(12)  
    end
  end

end
