require 'minitest/autorun'
require 'minitest/rg'

require_relative '../guest'
require_relative '../room'





class TestGuest < MiniTest::Test
#
   def setup()
     @guest1 = Guest.new("Jean")
     @room1 = Room.new("No 1", 1000)
   end
#
   def test_guest_has_name()
     assert_equal("Jean", @guest1.get_name())
   end
#
#   def test_customer_can_add_car()
#     @customer1.add_car(@car1)
#     assert_equal(1, @customer1.get_cars.length)
#   end
#
#
end
