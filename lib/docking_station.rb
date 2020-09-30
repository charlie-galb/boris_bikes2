require_relative 'bike.rb'


class DockingStation
  # attr_reader :stock
  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    @stock = bike
  end


end
docking_station = DockingStation.new
bike = Bike.new
docking_station.dock_bike(bike)
