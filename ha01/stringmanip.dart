import 'dart:io';

String reverseString(String input) {
  return input.split('').reversed.join();
}

bool isPalindrome(String input) {
  String normInput = input.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  String revNormInp = reverseString(normInput);
  return normInput == revNormInp;
}

void main() {
  print("#---Palindrome Checker---#\n");
  print("Enter 'exit' to quit...");
  while (true) {
    print("\nEnter a string: ");
    String? input = stdin.readLineSync();

    if (input == null || input == 'exit') {
      print("Exiting!");
      break;
    }
    if (input.isNotEmpty) {
      String reversedString = reverseString(input);
      print("Reversed input: $reversedString");

      bool isPal = isPalindrome(input);
      print("Is palindrome: $isPal");
    }
  }
}
