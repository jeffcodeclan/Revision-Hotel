class Hotel

  attr_accessor(:hotel_name, :rooms)

  def initialize(hotel_name, rooms)
    @hotel_name = hotel_name
    @rooms = rooms
  end

 def check_in(person)
   result = add_person_to_room(person)
   if result != true
     return "No rooms Sorry"
   end
 end

  def check_out(person, room)
    if room.array.length > 0
      return room.array.clear
        change_available(room)
       else
        puts "No one to check out"
    end
  end

    def change_available(room)
    if room.array.length > 0
      room.available = "No"
    elsif room.array.length < 1
      room.available = "Yes"
    end
  end

    def add_person_to_room(person) 
      @rooms.each do |room|
        if room.available == "Yes" && room.max_persons == person.number_in_party
          room.array << person
          change_available(room)
          return true 
        end
    end
  end

end   