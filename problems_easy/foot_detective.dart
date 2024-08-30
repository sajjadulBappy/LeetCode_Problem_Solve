import 'dart:io';

void main() {
  // Write your dart code from here
  Map<int, String> fruits = {
    31231: 'Banana',
    43861: 'Elderberry',
    82678: 'Honeydew Melon',
    23456: 'Apple',
    78901: 'Mango',
    98765: 'Nectarine',
    45678: 'Orange',
    67890: 'Raspberry',
    21098: 'Tangerine'
  };
  String? input = stdin.readLineSync();
  int? idInput = int.tryParse(input!);

  print(fruits[idInput]);
}