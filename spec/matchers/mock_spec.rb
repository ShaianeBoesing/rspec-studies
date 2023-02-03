require 'lib/student'
require 'lib/course'

describe "Mock" do 
  let(:student) { Student.new }
  let(:course) { Course.new }

  it "#bar" do 
    expect(student).to receive(:bar)
    student.bar
  end

  it "#foo" do 
    expect(student).to receive(:foo).with(an_instance_of(Course).or an_instance_of(Student)).twice
    student.foo(Student.new)
    student.foo(Course.new)
  end

  it "#bar" do 
    expect(student).to receive(:bar).at_least(3).times
    student.bar
    student.bar
    student.bar
    student.bar
  end

end