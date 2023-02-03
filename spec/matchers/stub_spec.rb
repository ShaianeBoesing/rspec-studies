require 'lib/student'
require 'lib/course'

describe "Stub" do 
  let(:student) { Student.new }
  let(:course) { Course.new }
  
  it "#has_finished?" do 
    allow(student).to receive(:has_finished?).with(an_instance_of(Course)).and_return(true)
    expect(student.has_finished?(course)).to be true
  end

  it "#complete?" do 
    allow(course).to receive(:complete?).and_return(false)
    expect(course.complete?).to be false
  end
end