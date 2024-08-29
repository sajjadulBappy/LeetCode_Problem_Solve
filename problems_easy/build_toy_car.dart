import 'dart:io';

void main() {
  // Write your dart code from here
  String? input1 = stdin.readLineSync();
  String? input2 = stdin.readLineSync();
  String? input3 = stdin.readLineSync();

  int? wheels = int.tryParse(input1 ?? "");
  int? carBody = int.tryParse(input2 ?? "");
  int? figures = int.tryParse(input3 ?? "");

  wheels = (wheels! ~/ 4);
  figures = (figures! ~/ 2);

  if(wheels < figures && wheels < carBody!){
    print(wheels);
  }else if(figures < wheels && figures < carBody!){
    print(figures);
  }else{
    print(carBody);
  }
}