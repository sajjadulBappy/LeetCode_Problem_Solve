import 'dart:io';

void main() {
  // Write your dart code from here
  Map<int, int> products = {
    101: 10,
    202: 25,
    303: 5,
  };

  String? input = stdin.readLineSync();
  List<String>? inputs = input?.split(' ');

  int? id = int.tryParse(inputs![0]);
  int? quantity  = int.tryParse(inputs[1]);

  print(products[id]! * quantity!);
}