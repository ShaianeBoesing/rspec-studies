describe "Test Doubles" do 
  before do 
    @user = double("User", password: "123")
    allow(@user).to receive_messages(name: "John", age: 12)
  end

  it { expect(@user).to respond_to(:name, :age, :password) }
  it { expect(@user).not_to respond_to(:email) }
  it { expect(@user.name).to eq("John") }
  it { expect(@user.age).to eq(12) }
  it { expect(@user.password).to eq("123") }
end