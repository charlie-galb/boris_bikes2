require "docking_station"

describe DockingStation do
  it "creates a new bike" do
    bike = DockingStation.new
    expect(bike).to be_truthy
  end
end
