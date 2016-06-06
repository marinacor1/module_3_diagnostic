class Search < OpenStruct
  attr_reader :service

  def initialize(user)
    @service = NrelService.new(user)
  end

  def all(zip)
    service.fuel_hash(zip)
  end

end
