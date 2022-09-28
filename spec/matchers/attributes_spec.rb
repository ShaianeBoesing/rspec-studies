require 'person'
# alias at https://gist.github.com/junichiito/f603d3fbfcf99b914f86
describe 'Person Attributes' do 
    it "have_attributes" do 
        person1 = Person.new
        person1.name = "Shaiane"
        person1.age = 20
        person2 = Person.new

        expect(person1).to have_attributes(:name => starting_with('Shai'), :age => (be >= 18))
        expect(person2).to have_attributes(:name => nil)
    end
end 