require 'minitest/autorun'
require 'minitest/rg'

require_relative '../guest'
require_relative '../room'
require_relative '../song'
require_relative '../bar'
#
#
class TestBar < MiniTest::Test
# #
#    def setup()
#      @bar = Bar.new("Karaoke Bar")
#      @guest1 = Guest.new("Jean")
#      @guest2 = Guest.new("Tobi")
# #     @car1 = Car.new("Nissan", 1000)
# #     @car2 = Car.new("BMW", 15000)
# #     @business.add_car(@car1)
# #     @business.add_car(@car2)
#    end
# #
#    def test_bar_has_name()
#      assert_equal("Karaoke Bar", @bar.name())
#    end
# #
#    def test_bar_has_guest()
#      assert_equal(2, @bar.guest().length())
#    end
# #
# #
# #   def test_can_sell_car()
# #     @business.sell_car(@customer1)
# #     assert_equal(1, @business.cars().length())
# #     assert_equal(1, @customer1.get_cars().length())
# end


# ==================================================

      # require 'test/unit'
      # class TestBar < Test::Unit::TestCase


        def setup()

          @rooms = [
            {
              no: 101,
              rental_info: {
                guest_name: "Jeff",
                date: "01/12/2016"
              }
            },
            {
              no: 103,
              rental_info: {
                guest_name: "",
                date: ""
              }
            }
          ]

          #@bar = Bar.new(@rooms)

        #end

        @songs = [
          {
            title: "Blow you",
            song_details: {
              artist_name: "Rihanna",
              date: "01/12/2016"
            }
          },
          {
            title: "Fly Away",
            song_details: {
              artist_name: "John-Boy",
              date: "01/12/2018"
            }
          }
        ]

        #@bar = Bar.new(@songs)

      #end

      @guests = [
        {
          name: "Jeff",
          guest_details: {
            guest_name: "Jeff Rex",
            date: "01/12/2016"
          }
        },
        {
          name: "New",
          guest_details: {
            guest_name: "New Guest",
            date: "01/12/2016"
          }
        }
      ]

      @bar = Bar.new(@rooms, @songs, @guests)

    end

    def test_list_rooms()
      room_list = @bar.rooms()
      assert_equal(@rooms, room_list)
    end

    def test_find_room()
      found_room = @library.find_room(103)
      assert_equal(103, found_room[:no])
    end

    def test_find_room__room_not_in_bar()
      found_room = @bar.find_room(1000)
      assert_nil(found_room)
    end

    def test_check_who_is_checking_in()    expected = {:guest_name => "Jeff", :date => "01/12/2016"}

      assert_equal(expected, @bar.find_renting_info(101))
    end

    def test_can_add_guest()
      @bar.add_guest("New")

      assert_equal({ name: "New", rental_details: { guest_name: "", date: ""} }, @bar.find_guest("New"))

      all_songs = @bar.songs()
      assert_equal(3, all_songs.count())
    end

    def test_can_rent_out_rooms()
      @bar.rent_room(103, "Paul", "05/12/2016")

      renting_info = @bar.find_renting_info(103)
      assert_equal({
        :guest_name => "Paul",
        :date => "05/12/2016"
        } , renting_info)
      end

      def test_cannot_play_out_song_if_it_doesnt_exist()
        result = @bar.play_song("Jaws")
        assert_equal("Not Found", result)
      end

    end
