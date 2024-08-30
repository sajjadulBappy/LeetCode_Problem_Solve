import 'dart:io';

void main() {
  // Write your dart code from here

  String? n = stdin.readLineSync();
  String? input = stdin.readLineSync();
  List<String>? inputs = input?.split(' ');
  List<int>? numbers = inputs?.map((e) => int.tryParse(e) ?? 0).toList();

  Map<int, int> numberCounts = {};
  for (int number in numbers!) {
    if (numberCounts.containsKey(number)) {
      numberCounts[number] = numberCounts[number]! + 1;
    } else {
      numberCounts[number] = 1;
    }
  }

  numberCounts.forEach((number, count) {
    if(count > 1){
      print(number);
      return;
    }
  });
}