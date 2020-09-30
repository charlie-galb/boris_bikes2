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
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock_bike(bike)
    expect(bike).to be_an_instance_of Bike
  end
  it "its contains a instance of a bike when you call a dock method" do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock_bike(bike)
    expect(docking_station.stock).to include(bike)
  end
  it "checks if there are any bikes available and throws an error if there are not" do
    expect { DockingStation.new.release_bike }.to raise_error("Dock is empty")
  end
  #it "Checks if there is already a bike in the docking station and raises an error if there is" do
  #  docking_station = DockingStation.new
  #  bike1 = Bike.new
  #  bike2 = Bike.new
  #  docking_station.dock_bike(bike1)
  #  expect { docking_station.dock_bike(bike2) }.to raise_error("Dock is full")
  #end
  it "tries to dock 21 bikes, filling the station past capacity, and raises an error" do
    docking_station = DockingStation.new
    expect { 21.times { docking_station.dock_bike(Bike.new) } }.to raise_error("Dock is full")
  end
end
# expect(list).to include(<object>) 
