import 'dart:io';

void main() {
  readFile();
  List<dynamic> endLineList = [];
  num sumOfLists = 0;
  for (var l in readFile()) {
    List<String> singleline = l.split(' ');
    List<dynamic> collection = [];
    String element = singleline[0];

    print("------------");
    print("Line: $l");

    for (int j = 0; j < element.length; j++) {
      if (element[j] == 'o' &&
          j + 2 < element.length &&
          element[j + 1] == 'n' &&
          element[j + 2] == 'e') {
        collection.add(1);
      } else if (element[j] == 't' &&
          j + 2 < element.length &&
          element[j + 1] == 'w' &&
          element[j + 2] == 'o') {
        collection.add(2);
      } else if (element[j] == 't' &&
          j + 4 < element.length &&
          element[j + 1] == 'h' &&
          element[j + 2] == 'r' &&
          element[j + 3] == 'e' &&
          element[j + 4] == 'e') {
        collection.add(3);
      } else if (element[j] == 'f' &&
          j + 3 < element.length &&
          element[j + 1] == 'o' &&
          element[j + 2] == 'u' &&
          element[j + 3] == 'r') {
        collection.add(4);
      } else if (element[j] == 'f' &&
          j + 3 < element.length &&
          element[j + 1] == 'i' &&
          element[j + 2] == 'v' &&
          element[j + 3] == 'e') {
        collection.add(5);
      } else if (element[j] == 's' &&
          j + 2 < element.length &&
          element[j + 1] == 'i' &&
          element[j + 2] == 'x') {
        collection.add(6);
      } else if (element[j] == 's' &&
          j + 4 < element.length &&
          element[j + 1] == 'e' &&
          element[j + 2] == 'v' &&
          element[j + 3] == 'e' &&
          element[j + 4] == 'n') {
        collection.add(7);
      } else if (element[j] == 'e' &&
          j + 4 < element.length &&
          element[j + 1] == 'i' &&
          element[j + 2] == 'g' &&
          element[j + 3] == 'h' &&
          element[j + 4] == 't') {
        collection.add(8);
      } else if (element[j] == 'n' &&
          j + 3 < element.length &&
          element[j + 1] == 'i' &&
          element[j + 2] == 'n' &&
          element[j + 3] == 'e') {
        collection.add(9);
      } else if (element[j] == '1') {
        collection.add(1);
      } else if (element[j] == '2') {
        collection.add(2);
      } else if (element[j] == '3') {
        collection.add(3);
      } else if (element[j] == '4') {
        collection.add(4);
      } else if (element[j] == '5') {
        collection.add(5);
      } else if (element[j] == '6') {
        collection.add(6);
      } else if (element[j] == '7') {
        collection.add(7);
      } else if (element[j] == '8') {
        collection.add(8);
      } else if (element[j] == '9') {
        collection.add(9);
      }
    }
    int combinedValue = int.parse('${collection[0]}${collection[collection.length-1]}');
    endLineList = [combinedValue];
    print(endLineList);

    sumOfLists += endLineList[0];
    print("Adding ${endLineList[0]}");
    print("Current Sum: $sumOfLists");
  }
  print("Total Sum: ${sumOfLists}");
}

List<dynamic> readFile() {
  final inputdayone = File("input.txt");
  List<dynamic> lines = inputdayone.readAsLinesSync();
  return lines;
}