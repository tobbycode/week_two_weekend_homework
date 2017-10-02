 class Guest
#
   def initialize(name)
     @guest = name
     @rooms = []
   end
#
   def get_name()
     return @guest
   end
#
   def get_room()
     return @rooms
   end
#
#  def add_car(car)
#    @cars << car
#  end
#
#
#
 end

 ===========================

 # class Guest
#     def initialize(name, room)
#         @name = name
#         @room = room.to_i
#     end
#
#     def get_room_no()
#         return @room_no
#     end
#
#     def get_name()
#         return @name
#     end
#
#     def roll_dice(dice)
#         @room += dice.roll()
#         puts "#{@name} has moved into #{@room}"
#         return @room
#     end
#
#     def set_room(room)
#         @room = room
#     end


#end
