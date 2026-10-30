import 'dart:io';

void main() {
  try {
    // Prompts the user to enter a positive whole number
    print("Enter a positive number:");

    // Reads input from the user
    String? input = stdin.readLineSync();

    // Converts the input into an integer
    int number = int.parse(input!);

    // Calls the function to count even numbers from 1 to the entered number
    int evenCount = countEvenNumbers(number);

    // Displays the total count of even numbers
    print("\nTotal even numbers from 1 to $number: $evenCount");
  } catch (e) {
    // Handles invalid inputs that cannot be converted to an integer
    print("Error: Please enter a valid whole number.");
  }
}

// Counts and displays all even numbers from 1 up to the given limit
int countEvenNumbers(int limit) {
  int count = 0;

  // Checks if the entered number is greater than zero
  if (limit > 0) {
    print("\nEven numbers:");

    // Loops through all numbers from 1 to the specified limit
    for (int i = 1; i <= limit; i++) {

      // Checks whether the current number is even
      if (i % 2 == 0) {
        print(i);
        count++;
      }
    }
  } else {
    // Displays an error message if the number is zero or negative
    print("The number must be greater than 0.");
  }

  // Returns the total count of even numbers found
  return count;
}