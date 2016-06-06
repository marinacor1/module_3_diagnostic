class NrelService

  def initialize(user)
    @user = user
    @connection = Faraday.new(url: "https://api.data.gov/nrel/")
    @connection.headers['X-Api-Key'] = @user.api_key
  end

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_user

  end

  def get_fuel_stations
  end

end
