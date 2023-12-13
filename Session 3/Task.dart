
import 'dart:io'; 

void main() {
  // Input the list of numbers by the user..

  print("Enter a list of numbers: ");
  String input = stdin.readLineSync()!;
  List<String> numberStrings = input.split(',');
  var numbers = numberStrings.map((e) => int.parse(e.trim())).toList();


  // Input the left and right values

  print("Enter the left value: ");
  int left = int.parse(stdin.readLineSync()!);
  print("Enter the right value: ");
  int right = int.parse(stdin.readLineSync()!);

  var finalResult = [];

  for (int i = 0; i < numbers.length; i++) {
    double x = (numbers[i] / (i + 1));

    if (left <= x && x <= right) {
      if (x % 1 == 0) {
        finalResult.add(true);
      } else {
        finalResult.add(false);
      }
    } else {
      finalResult.add(false);
    }
  }
  
  print(finalResult);
}
