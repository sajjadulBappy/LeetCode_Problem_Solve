import 'dart:io';

void main() {
  // Write your dart code from here
  String? input = stdin.readLineSync();
  List<String>? inputs = input?.split(' ');

  int? wheels = int.tryParse(inputs![0]);
  int? carBody = int.tryParse(inputs[1]);
  int? figures = int.tryParse(inputs[2]);

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