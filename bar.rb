
#
#    def initialize(name)
#      @bar = name
#      @guest = []
#      @rooms = []
# #
#    end

class Bar
     def initialize(rooms, songs, guests)
       @rooms = rooms
       @songs = songs
       @guests = guests
     end

     def rooms()
       return @rooms
     end

     def find_room(room_no)
       for room in @rooms
         return room if room[:no] == room_no
       end
       return nil
     end
#
#   # Note* @guest = guest array ---- [guest1, guest2, guest3, guest4]
#
#
#    def name()
#      return @bar
#    end
# #
#    def guest()
#      return @guest
#    end
# #
#    def add_guest(guest)
#      @guest << guest
#    end

#    def room()
#      return @rooms
#    end
# #
#    def add_room(room)
#      @rooms << room
#    end
#
#
  def remove_room()
    @room.pop()
  end
#
  def play_song()
    for song in @songs
      song.play()
    end
  end
#
  def rent_room(guest)
    room_to_rent = remove_room()
    guest.add_room(room_to_rent)
   end
   # 
  #  =========
  #  =========

   def find_renting_info(no)
    for room in @rooms
      if room[:no] == no
        return room[:rental_details]
      end
    end
    return nil
  end

  def add_room(room_no)
    @rooms.push({
      no: room_no,
      rental_details: {
        guest_name: "",
        date: ""
      }
      })
    end

    def rent_room(no, new_guest, new_date)
      room = find_room(no)
      return "Not Found" if room.nil?()

      room[:rental_details][:guest_name] = new_guest
      room[:rental_details][:date] = new_date
    end

    def songs()
      return @songs
    end

    def find_song(song_title)
      for song in @songs
        return song if song[:title] == song_title
      end
      return nil
    end

    def find_song_info(title)
      for song in @songs
        if song[:title] == title
          return song[:song_details]
        end
      end
      return nil
    end

    def add_song(song_title)
      @songs.push({
        title: song_title_,
        song_details: {
          artist_name: "",
          date: ""
        }
        })
      end

      def play_song(song_title)
        @songs.play_song({
          title: song_title
          })
        end

      def guests()
        return @guests
      end

      def find_guest(guest_name)
        for guest in @guests
          return guest if guest[:name] == guest_name
        end
        return nil
      end

      def find_guest_details(name)
        for guest in @guests
          if guest[:name] == name
            return guest[:guest_details]
          end
        end
        return nil
      end

      def add_guest(guest_name)
        @guest.push({
          name: guest_name,
          guest_details: {
            guest_name: "New",
            room_no: "",
            date: ""
          }
          })
        end

      end

      #  The OO CodeClan Caraoke (CCC)
      #
      # You have been approached to build software for
      #  a Karaoke bar. Specifically, they want you to
      # build a software for checking guests in and out,
      # plus handling songs.
      #
      # Your program should be test driven and
      # should be able to:
      #
      # Create rooms, songs and guests
      # Check in guests to rooms/Check out guests
      # from rooms
      # Add songs to rooms
      # Extensions
      #
      # What happens if there are more guests
      # trying to be checked in than there is
      # free space in the room?
      # Karaoke venues usually have an entry fee -
      #  So the guests could have money so they
      #  can pay it.
      # Advanced extensions
      #
      # Guests could have a favourite song, and
      #  if their favourite song is on the room's
      # playlist, they can cheer loudly!
      # (return a string like "Whoo!")
      # Rooms can keep track of the entry fees/spending
      #  of the guests - maybe add a bar tab/bar class?
      #
      # Add anything extra you think would be good
      # to have at a karaoke venue!
      #
      # require('minitest/autorun')
      # require('minitest/rg')
      # require_relative('../bar')
