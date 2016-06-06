class NrelService
  attr_reader: connection

  def initialize(user)
    @user = user
    @connection = Faraday.new(url: "lsdjfldsj")
    @connection.headers(jsdlfjsldjf)
  end

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_user

  end

  def get_fuel_stations
  end

end
