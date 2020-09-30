require "docking_station"

describe DockingStation do
  it "creates a new bike" do
    bike = DockingStation.new
    expect(bike).to be_an_instance_of DockingStation
  end

  it "can realease bike" do
    expect(DockingStation.new).to respond_to (:release_bike)
  end
end
