import 'dart:io';

void main() {
  // Write your dart code from here
  String? input = stdin.readLineSync();
  bool checker = true;
  for (int i = 0; i < input!.length; i++) {
    if(i % 2 == 0){
      if(input[i] != input[i].toLowerCase()){
        print("No");
        checker = false;
      }
    }else{
      if(input[i] != input[i].toUpperCase()){
        print("Yes");
        checker = false;
      }
    }
  }
  if(checker){
    print("Yes");
  }
}