class Flight 
  def initialize(flight_number,capacity)
    @flight_number=flight_number
    @capacity=capacity
    @passengers=[]
  end

  def passengers
return @passengers
  end

  def full?
    if @passengers.length==@capacity
      return true
    else
      return false
    end
  end

  def board_passenger(passenger_1)
    if passenger_1.has_flight?(@flight_number)
      if !self.full?
      @passengers<<passenger_1
      end
    end
  end

  def list_passengers
    @passengers.map {|passenger| passenger.name}
  end

  def [](idx)
    @passengers[idx]
  end

  def <<(passenger)
    board_passenger(passenger)
  end

end