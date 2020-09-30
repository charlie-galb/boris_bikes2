require_relative 'bike.rb'


class DockingStation
  attr_reader :stock
  def initialize
    @stock =[]
  end
  def release_bike
    return raise "Dock is empty" if @stock.empty?
    Bike.new
  end

  def dock_bike(bike)
    return raise "Dock is full" if !@stock.empty?
    @stock.push(bike)
  end


end
