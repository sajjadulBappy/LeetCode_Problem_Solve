import 'dart:io';

void main() {
  // Write your dart code from here
  String? input = stdin.readLineSync();
  List<int>? nums = input?.split(' ').map(int.parse).toList();
  int count = 0;
  for(int i = 1; i < nums!.length; i++){
    if(i == 1){
      count++;
    }
  }
  print(count);
}