class Guest {
  String name;

  Guest(this.name);
}

class Room {
  int roomNumber;
  double price;
  bool isAvailable = true;

  Room(this.roomNumber, this.price);
}

class Reservation {
  Guest guest;
  Room room;

  Reservation(this.guest, this.room);

  void reserveRoom() {
    if (room.isAvailable) {
      room.isAvailable = false;

      print("${guest.name} reserved Room ${room.roomNumber}");
      print("Room Price: ${room.price}");
    } else {
      print("Room is not available");
    }
  }

  void cancelReservation() {
    room.isAvailable = true;

    print("Reservation cancelled");
    print("Room ${room.roomNumber} is now available");
  }
}

void main() {
  Guest guest = Guest("Rahim");

  Room room = Room(101, 3000);

  Reservation reservation = Reservation(guest, room);

  reservation.reserveRoom();

  print("");

  reservation.cancelReservation();
}