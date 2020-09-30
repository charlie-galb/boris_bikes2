require "docking_station"

describe DockingStation do
  it "creates a new bike" do
    bike = DockingStation.new
    expect(bike).to be_an_instance_of DockingStation
  end

  it "can realease bike" do
    expect(DockingStation.new).to respond_to (:release_bike)
  end

  it "releases a new bike when the 'release_bike' method is called" do
    expect(DockingStation.new.release_bike).to be_an_instance_of Bike
  end
  it "its contains a instance of a bike when you call a dock method" do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock_bike(bike)
    expect(docking_station.stock).to eq bike
  end
end
