// Abstract class that defines a common behavior for all transport vehicles
abstract class Transport {
  void travel();
}

// Mixin that provides GPS tracking functionality
mixin GPS {
  void trackLocation() {
    print("GPS tracking is active.");
  }
}

// Represents a jeepney with route, capacity, and fare information
class Jeepney extends Transport {
  String route;
  int capacity;
  double fare;

  // Constructor that initializes the jeepney's route, capacity, and fare
  Jeepney(this.route, this.capacity, this.fare);

  // Displays the travel operation of the jeepney
  @override
  void travel() {
    print("The jeepney is traveling along route $route.");
  }

  // Simulates passengers boarding the jeepney
  void pickupPassengers(int passengers) {
    print("The jeepney on route $route picked up $passengers passengers.");
  }

  // Updates the fare amount of the jeepney
  void updateFare(double newFare) {
    fare = newFare;
    print("The fare for route $route has been updated to ₱$fare.");
  }

  // Displays the jeepney's details
  void displayInfo() {
    print("\nRoute: $route");
    print("Capacity: $capacity passengers");
    print("Fare: ₱$fare");
  }
}

// Represents a traditional jeepney and overrides travel behavior
class TraditionalJeepney extends Jeepney {

  // Constructor for a traditional jeepney
  TraditionalJeepney(String route, int capacity, double fare)
      : super(route, capacity, fare);

  // Displays how a traditional jeepney operates on its route
  @override
  void travel() {
    print("Traditional Jeepney is operating on route $route.");
  }
}

// Represents a modern jeepney and overrides travel behavior
class ModernJeepney extends Jeepney {

  // Constructor for a modern jeepney
  ModernJeepney(String route, int capacity, double fare)
      : super(route, capacity, fare);

  // Displays how a modern jeepney operates on its route
  @override
  void travel() {
    print("Modern Jeepney is operating on route $route.");
  }
}

// Dispatcher class that uses the GPS mixin
class Dispatcher with GPS {

  // Simulates monitoring active jeepney routes
  void monitorRoute() {
    print("\nDispatcher is monitoring jeepney routes.");
  }
}

void main() {

  // Creates a traditional jeepney object
  TraditionalJeepney traditional =
      TraditionalJeepney("Cubao - Quiapo", 20, 13.0);

  // Creates a modern jeepney object
  ModernJeepney modern =
      ModernJeepney("Pasig - Makati", 18, 15.0);

  traditional.displayInfo();
  traditional.travel();
  traditional.pickupPassengers(15);
  traditional.updateFare(14.0);

  print("\n===========================");

  modern.displayInfo();
  modern.travel();
  modern.pickupPassengers(12);
  modern.updateFare(16.0);

  print("\n===========================");

  // Demonstrates polymorphism by storing different jeepney types in one list
  List<Jeepney> jeepneys = [traditional, modern];

  print("\nPolymorphism Demonstration:");
  for (var jeepney in jeepneys) {
    jeepney.travel();
  }

  print("\n===========================");

  // Creates a dispatcher and activates route monitoring and GPS tracking
  Dispatcher dispatcher = Dispatcher();
  dispatcher.monitorRoute();
  dispatcher.trackLocation();
}