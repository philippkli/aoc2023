import 'dart:io';

void main() {
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
        } else if (element[j] == 't' && j+4 < element.length && element[j+1] == 'h' && element[j+2] == 'r' && element[j+3] == 'e' && element[j+4] == 'e') {
          print('3');
        } else if (element[j] == 'f' && j+3 < element.length && element[j+1] == 'o' && element[j+2] == 'u' && element[j+3] == 'r') {
          print('4');
        } else if (element[j] == 'f' && j+3 < element.length && element[j+1] == 'i' && element[j+2] == 'v' && element[j+3] == 'e') {
          print('5');
        } else if (element[j] == 's' && j+2 < element.length && element[j+1] == 'i' && element[j+2] == 'x') {
          print('6');
        } else if (element[j] == 's' && j+4 < element.length && element[j+1] == 'e' && element[j+2] == 'v' && element[j+3] == 'e' && element[j+4] == 'n') {
          print('7');
        } else if (element[j] == 'e' && j+4 < element.length && element[j+1] == 'i' && element[j+2] == 'g' && element[j+3] == 'h' && element[j+4] == 't') {
          print('8');
        } else if (element[j] == 'n' && j+3 < element.length && element[j+1] == 'i' && element[j+2] == 'n' && element[j+3] == 'e') {
          print('9');
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