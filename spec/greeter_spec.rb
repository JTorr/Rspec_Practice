class RspecGreeter
  def greet
    "Hello Rspec!"
  end
end


describe "Rspec Greeter" do
  it "says 'Hello Rspec!' when it receives the Greet message" do
    greeter = RspecGreeter.new
    greeting = greeter.greet
    # greeting.should == "Hello Rspec!"
    expect(greeting).to eq("Hello Rspec!")
  end
end
