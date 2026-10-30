import 'dart:async';

/// Represents a generic utility account.
class UtilityAccount {
  String customerName;
  double consumption;

  /// Constructor to initialize account details.
  UtilityAccount(this.customerName, this.consumption);

  /// Calculates the bill amount.
  double calculateBill() {
    return consumption * 12.5;
  }

  /// Displays account information.
  void displayInfo() {
    print("Customer: $customerName");
    print("Consumption: $consumption kWh");
    print("Bill: ₱${calculateBill()}");
  }
}

/// Child class demonstrating inheritance.
class ElectricityAccount extends UtilityAccount {
  double serviceFee;

  /// Constructor for electricity-specific details.
  ElectricityAccount(
      String customerName,
      double consumption,
      this.serviceFee)
      : super(customerName, consumption);

  /// Overrides bill calculation.
  @override
  double calculateBill() {
    return (consumption * 12.5) + serviceFee;
  }
}

/// Simulates retrieving data from a server.
Future<void> fetchAccountData() async {
  print("\nRetrieving account records...");
  await Future.delayed(Duration(seconds: 2));
  print("Records successfully loaded.\n");
}

/// Function to determine consumption category.
String getConsumptionLevel(double consumption) {
  if (consumption < 100) {
    return "Low";
  } else if (consumption < 300) {
    return "Moderate";
  } else {
    return "High";
  }
}

Future<void> main() async {
  await fetchAccountData();

  List<ElectricityAccount> accounts = [
    ElectricityAccount("Juan Dela Cruz", 120, 50),
    ElectricityAccount("Maria Santos", 280, 50),
    ElectricityAccount("Pedro Reyes", 350, 50),
  ];

  print("=== Utility Consumption Report ===\n");

  for (var account in accounts) {
    account.displayInfo();
    print(
        "Consumption Level: ${getConsumptionLevel(account.consumption)}");
    print("-------------------------------");
  }
}