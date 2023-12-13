import 'dart:io';

void main() {
  func();
  readFile();
  for (var l in readFile()) {
    List<String> singleline = l.split(' ');
    print("Line: $l");
    print("Line length: ${singleline.length}");
    print("------------");

    for (int i = 0; i < singleline.length; i++) {
      String element = singleline[i];
      for (int j = 0; j < element.length; j++) {
        if (element[j] == 'o' && j+2 < element.length && element[j+1] == 'n' && element[j+2] == 'e') {
          print('1');
        } else if (element[j] == 't' && j+2 < element.length && element[j+1] == 'w' && element[j+2] == 'o') {
          print('2');
        } 
      }
    }
  }
}

List<dynamic> readFile() {
  final inputdayone = File("testinputpart2.txt");
  List<dynamic> lines = inputdayone.readAsLinesSync();
  return lines;
}

// use this
void func() {
  String test = 'Hallo';
  print(test.substring(1));
  print(test.startsWith('Ha'));
  print(test.endsWith('llo'));
}

// theorie 1: Array abgleichen da eintrag two, im array die index 2 hat also two = zwei, und dann den integer wiedergeben
int convertStringToInt(String str) {
  var words = [
    'zero',
    'one',
    'two',
    'three', 
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine',
  ];
  return words.indexOf(str);
}