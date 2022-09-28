require 'date'
describe "Classes" do
    it "must be instance of Integer" do 
        expect(5).to be_instance_of(Integer)
    end

    it "must be kind of Integer (by Inherit)" do 
        my_date = DateTime.new(2001,2,3,4,5,6) #it's instance of DateTime and inherit kind of Date
        expect(my_date).to be_kind_of(Date)
        expect(my_date).to be_instance_of(DateTime)
    end

    it "must respond_to :size and :count methods" do
        expect("text").to respond_to(:size)
        expect("text").to respond_to(:count)
    end

    it "must be_a #same as be_kind_of" do 
        my_date = DateTime.new
        expect(my_date).to be_a(Date)
    end
    it "must be_an #same as be_kind_of" do 
        my_date = DateTime.new
        expect(my_date).to be_an(Date)
    end
end