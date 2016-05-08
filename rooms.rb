class Room
attr_accessor(:available, :array, :max_persons)
  def initialize(number,beds,available, price, max_persons)
    @available = available
    @array = Array.new
    @max_persons = max_persons
  end
end

