require 'person'
# alias at https://gist.github.com/junichiito/f603d3fbfcf99b914f86
describe 'Person Attributes' do 
    # replaces use of before(:each) to create a instance of Person
    let(:person) { Person.new }
    let(:person2) { Person.new }

    it "have_attributes" do 
        person.name = "Shaiane"
        person.age = 20

        expect(person).to have_attributes(:name => starting_with('Shai'), :age => (be >= 18))
        expect(person2).to have_attributes(:name => nil)
    end
end 