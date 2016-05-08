require('minitest/autorun')
require_relative('../hotel.rb')
require_relative('../guests.rb')
require_relative('../rooms.rb')

class TestHotel < Minitest::Test

 def setup
   @room1 = Room.new(1, "Double", "Yes", 100, 2)
   @room2 = Room.new(2, "Single", "Yes", 50, 1)
   @guest1 = Guest.new("Mr","Jeff", 1)
   @guest2 = Guest.new("Mrs", "Suz", 2)

   rooms = [@room1,@room2,@room3]

   @hotel = Hotel.new("Jeffton Manors", rooms)
 end

  def test_check_in
    @hotel.check_in(@guest1)
    assert_equal("Jeff", @room2.array[0].name)
  end  

  def test_check_in_2
    @hotel.check_in(@guest2)
    assert_equal("Suz", @room1.array[0].name)
  end

  def test_check_out()
    @hotel.add_person_to_room(@guest2)
    assert_equal([], @hotel.check_out(@guest2, @room1))
  end

end