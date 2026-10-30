void main() {
  // Stores the buyer's name
  String buyerName = "Earl Baldoza";

  // Stores the name of the purchased item
  String itemName = "Gel Pen";

  // Stores the quantity of items purchased
  int quantity = 3;

  // Stores the price of one item
  double pricePerItem = 25.50;

  // Indicates whether a student discount is applied
  bool isStudentDiscountApplied = true;

  // Calculates the total cost of all purchased items
  double totalCost = quantity * pricePerItem;

  // Checks if the total cost exceeds the ₱100 budget
  bool exceedsBudget = totalCost > 100.0;

  // Displays purchase details
  print("\n");
  print("Buyer Name: $buyerName");
  print("Item Name: $itemName");
  print("Quantity: $quantity");
  print("Price Per Item: ₱$pricePerItem");
  print("Student Discount Applied: $isStudentDiscountApplied");
  print("Total Cost: ₱$totalCost");
  print("Exceeds ₱100 Budget: $exceedsBudget");
  print("\n");
}