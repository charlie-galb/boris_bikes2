require "bike"
describe Bike do
  it "creates a new bike" do
    bike = Bike.new
    expect(bike).to be_an_instance_of Bike
  end

  it "can release bike" do
    expect(Bike.new).to respond_to (:working?)
  end

  it "Says if it is working or not" do
    expect(Bike.new.working?).to eq(true)
  end
end
