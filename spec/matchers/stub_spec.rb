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

  context "Dynamic Arguments" do 
    before do 
      allow(student).to receive(:foo) do |arg| 
       if arg == :hi
        "oi"
       elsif arg == :hello 
        "olá"        
       end
      end
    end

    it { expect(student.foo(:hello)).to eq "olá" }
    it { expect(student.foo(:hi)).to eq "oi" }
  end

  context "Any Instance" do 
    let(:student_2) { Student.new }
    before do 
      allow_any_instance_of(Student).to receive(:bar).and_return(true)
    end

    it { expect(student.bar).to be true }
    it { expect(student_2.bar).to be true }
  end

  context "Errors" do 
    before do 
      allow_any_instance_of(Student).to receive(:error).and_raise(RuntimeError)
    end

    it { expect{ student.error }.to raise_error(RuntimeError) }
  end
end