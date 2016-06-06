class FuelStation < OpenStruct
  attr_reader :service

  def initialize(user)
    @service = NrelService.new(user)
  end

  

end
