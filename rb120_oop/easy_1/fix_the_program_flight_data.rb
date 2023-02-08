class Flight
  attr_accessor :database_handle

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end


#delete the attr_accessor because if we decided not to use the database then we don't have to worry about accidentily adding one into the program 