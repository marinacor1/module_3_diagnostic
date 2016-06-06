class NrelService

  def initialize(user)
    @user = user
    @connection = Faraday.new(url: "https://api.data.gov/nrel/")
    @connection.headers['X-Api-Key'] = @user.api_key
  end

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_all_fuel_stations_limited
    @connection.get "https://api.data.gov/nrel/alt-fuel-stations/v1.json?limit=1&api_key=#{ENV["#{NREL_KEY}"]}"
  end

  def get_fuel_stations(zip)
    @connection.get "https://api.data.gov/nrel/alt-fuel-stations/v1.nearest.json?location=#{zip}&api_key=#{ENV["#{NREL_KEY}"]}"
  end

  def fuel_hash(zip)
    parse(get_fuel_stations(zip))
  end

end
