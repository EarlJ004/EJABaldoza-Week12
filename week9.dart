// Represents a jeepney with a route, passenger capacity, and fare
class Jeepney {
  String route;
  int capacity;
  double _fare;

  // Constructor that initializes the jeepney's route, capacity, and fare
  Jeepney(this.route, this.capacity, this._fare);

  // Returns the current fare of the jeepney
  double getFare() {
    return _fare;
  }

  // Updates the fare with a new value
  void updateFare(double newFare) {
    _fare = newFare;
  }

  // Simulates picking up passengers along the route
  void pickUpPassengers(int passengers) {
    print('The jeepney on route $route picked up $passengers passengers.');
  }

  // Displays a message showing the jeepney travelling on its route
  void travel() {
    print('The jeepney is traveling along route $route.');
  }
}

void main() {
  // Creates a list containing jeepney objects
  List<Jeepney> jeepneys = [
    Jeepney('Cubao - Quiapo', 20, 13.0),
    Jeepney('Pasig - Makati', 18, 15.0),
  ];

  // Displays information for each jeepney
  for (var jeepney in jeepneys) {
    print('Route: ${jeepney.route}');
    print('Capacity: ${jeepney.capacity}');
    print('Fare: ₱${jeepney.getFare()}');

    jeepney.travel();
    jeepney.pickUpPassengers(5);

    print('');
  }

  // Updates the fare of the first jeepney
  jeepneys[0].updateFare(14.0);

  print(
      'Updated fare for ${jeepneys[0].route}: ₱${jeepneys[0].getFare()}');
}