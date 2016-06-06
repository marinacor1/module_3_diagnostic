require 'rails_helper'

RSpec.feature "get fuel stations" do
  it "shows possible fuel stations once authorized" do
    VCR.use_cassette "fuel lookup" do
    user = User.create(name: "Marina", api_key: ENV["NREL_KEY"])
    service = NrelService.new(user)
    stations = service.get_fuel_stations
    parsed_stations = parse(stations)

    expect(parsed_stations).to eq(";sdkf;ksdfk")
    end
  end
end
