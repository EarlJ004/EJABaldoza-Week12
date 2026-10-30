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

// Represents a jeepney with route, capacity, fare, and record management features
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

  // Simulates saving a jeepney record asynchronously
  Future<String> saveRecord() async {
    await Future.delayed(Duration(seconds: 2));
    return "Jeepney record for route $route has been saved.";
  }
}

// Represents a traditional jeepney with customized travel behavior
class TraditionalJeepney extends Jeepney {

  // Constructor for a traditional jeepney
  TraditionalJeepney(String route, int capacity, double fare)
      : super(route, capacity, fare);

  // Overrides the travel method for traditional jeepneys
  @override
  void travel() {
    print("Traditional Jeepney is operating on route $route.");
  }
}

// Represents a modern jeepney with customized travel behavior
class ModernJeepney extends Jeepney {

  // Constructor for a modern jeepney
  ModernJeepney(String route, int capacity, double fare)
      : super(route, capacity, fare);

  // Overrides the travel method for modern jeepneys
  @override
  void travel() {
    print("Modern Jeepney is operating on route $route.");
  }
}

// Dispatcher class that uses GPS tracking functionality
class Dispatcher with GPS {

  // Monitors active jeepney routes
  void monitorRoute() {
    print("\nDispatcher is monitoring jeepney routes.");
  }
}

// Main program demonstrating OOP and asynchronous programming concepts
Future<void> main() async {

  // Creates traditional and modern jeepney objects
  TraditionalJeepney traditional =
      TraditionalJeepney("Cubao - Quiapo", 20, 13.0);

  ModernJeepney modern =
      ModernJeepney("Pasig - Makati", 18, 15.0);

  traditional.displayInfo();
  traditional.travel();

  print("\n===========================");

  modern.displayInfo();
  modern.travel();

  print("\n===========================");

  // Demonstrates polymorphism
  List<Jeepney> jeepneys = [traditional, modern];

  print("\nPolymorphism Demonstration:");
  for (var jeepney in jeepneys) {
    jeepney.travel();
  }

  print("\n===========================");

  // Demonstrates mixin functionality
  Dispatcher dispatcher = Dispatcher();
  dispatcher.monitorRoute();
  dispatcher.trackLocation();

  print("\n===========================");

  // Demonstrates asynchronous record saving
  print("Saving jeepney record...");
  print("Please wait while the record is being processed.");

  String result = await traditional.saveRecord();

  print(result);
}