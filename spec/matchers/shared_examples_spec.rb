require "lib/person"

shared_examples 'status' do |feeling|
  it "#{feeling}" do 
    person.send("#{feeling}!")
    expect(person.status).to eq("feeling #{feeling}!")
  end
end

describe 'Person' do 
  subject(:person) { Person.new }

  include_examples 'status', :happy
  include_examples 'status', :sad
end